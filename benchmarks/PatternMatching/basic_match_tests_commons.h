/*
 *
 * File: basic_match_tests_commons.h
 *
 *
 */
#ifndef UINT_MAX
    #define UINT_MAX ((UINT32)-1)
#endif // UINT_MAX
using namespace std;

/* About descriptor file:

In the most simple form sift takes an image in PGM format and computes its SIFT keypoints and the relative descriptors,
producing a ‘.key’ ASCII file. This file has one line per keypoint, with the x and y coordinates (pixels), the scale (pixels),
the orientation (radians) and 128 numbers (in the range 0-255) representing the descriptor.
This file is almost equivalent to the output of D. Lowe’s original implementation, except that x and y are swapped
and the orientation is negated due to a different choice of the image coordinate system. --floating-point can be used
to save full floating point descriptors instead of integer descriptors.
*/

#define FEATURES_PER_DESCRIPTOR 128
struct SiftDescriptor
{
    float X;
    float Y;
    float Scale;
    float Orientation;
};

#define MAX_DESCRIPTORS 16384
#define MAX_MATCHES (100*1000)
#define MAX_REDUCES (64*1024* 1024)

#define FACTOR1 46
#define FACTOR2 7 // that is (1 << 7)
/* We have to compare x/y with 0.36 ; if it is less, we have a true match

x/y < 0.36 is eqv with x < 0.36*y
0.36*y ~ 0.359375 *y = ((46 * y) >> 7) = (FACTOR1 * y) >> FACTOR2
*/
#define FACTOR2_VAL (1 << FACTOR2)

struct AlingedSiftDescriptorPtrs
{
    void* NonalignedValue;
    void* AlignedValue;
};


struct SiftDescriptorsF32
{
    FLOAT32 SiftDescriptorsBasicFeatures[MAX_DESCRIPTORS][FEATURES_PER_DESCRIPTOR];
    SiftDescriptor SD[MAX_DESCRIPTORS];
    UINT16 RealDescriptors;
};

struct SiftDescriptors16
{
    UINT16 SiftDescriptorsBasicFeatures[MAX_DESCRIPTORS][FEATURES_PER_DESCRIPTOR];
    SiftDescriptor SD[MAX_DESCRIPTORS];
    UINT16 RealDescriptors;
};

struct SiftDescriptors8
{
    UINT8 SiftDescriptorsBasicFeatures[MAX_DESCRIPTORS][FEATURES_PER_DESCRIPTOR];
    SiftDescriptor SD[MAX_DESCRIPTORS];
    UINT16 RealDescriptors;
};

struct SiftMatches
{
    //DescriptorIndexInSecondImage
    UINT32 DescIx2ndImgMin[MAX_MATCHES];
    UINT32 DescIx2ndImgNextToMin[MAX_MATCHES];
    UINT32 ScoreMin[MAX_MATCHES];
    UINT32 ScoreNextToMin[MAX_MATCHES];
    UINT16 RealMatches;
};

AlingedSiftDescriptorPtrs malloc_alligned(int BytesToAllocate, int LogAlignament);
void free_alligned(AlingedSiftDescriptorPtrs obj);
void PrintDescriptors(SiftDescriptors16 *SDs);
void PrintMatches(SiftMatches *SMs);
int CompareMatches(SiftMatches *SMs1, SiftMatches *SMs2);

int LoadDescriptorsF32(char *FileName, SiftDescriptorsF32 *SDs, int Limit);
int LoadDescriptors16(char *FileName, SiftDescriptors16 *SDs, int Limit);
int LoadDescriptors16_64m(char *FileName, SiftDescriptors16 *SDs, int Limit);
int LoadDescriptors8(char *FileName, SiftDescriptors8 *SDs, int Limit);

#ifdef __ARM_NEON__
    #include <arm_neon.h>
#else //SSE


#endif // __ARM_NEON__
