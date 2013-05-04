#ifndef UTILS_H
#define UTILS_H

#ifndef UINT8
#define UINT8 unsigned char
#endif

#ifndef UINT16
#define UINT16 unsigned short int
#endif

#ifndef INT16
#define INT16 short int
#endif

#ifndef UINT32
#define UINT32 unsigned int
#endif

#ifndef INT32
#define INT32  int
#endif

#ifndef UINT64
#define UINT64 unsigned long long int
#endif

#ifndef INT64
#define INT64  long long int
#endif

#ifndef FLOAT32
#define FLOAT32 float
#endif

#define LOCAL_STORE_SIZE 1024
#define REGISTER_FILE_SIZE 32

#define UINT_INSTRUCTION UINT32 // how long an instruction is
#define UINT_RED_REG_VAL UINT32 //actually 16+ log2(128) = 23 bits are enough for RedAdd
#define UINT_REGISTER_VAL UINT16
#define BYTES_IN_DWORD 4

#define NUMBER_OF_MACHINES 128LL
//#define NUMBER_OF_MACHINES 4LL
#define REDUCTION_SIZE      (7 + REGISTER_SIZE) // 7 = log2(NUMBER_OF_MACHINES)
#define REDUCTION_SIZE_MASK ((1 << REDUCTION_SIZE) -1)

#define REGISTER_SIZE       16  //bits
#define REGISTER_SIZE_MASK ((1 << REGISTER_SIZE) -1)

#define PASS 0
#define FAIL -1

#define FAIL_ON_WRITE   -2
#define FAIL_ON_READ    -3
#define FAIL_ON_OPEN    -4

#define CPPAMP_EMULATION_MODE	3
#define C_SIMULATION_MODE       2
#define VERILOG_SIMULATION_MODE 1
#define REAL_HARDWARE_MODE      0
#define INVALID_MODE           -1

#define INIT(x) initialize(x)
#define DEINIT() deinitialize()

int initialize(UINT8);
int deinitialize();
extern UINT_RED_REG_VAL (*EXECUTE_BATCH)(UINT16 dwBatchNumber);
extern UINT_RED_REG_VAL (*EXECUTE_BATCH_RED)(UINT16 dwBatchNumber);
extern UINT32 (*GET_MULTIRED_RESULT)(UINT_RED_REG_VAL* RedResults, UINT32 Limit);

extern int (*IO_WRITE_NOW)(void*);
extern int (*IO_WRITE_BEGIN)(void*);
extern void (*IO_WRITE_WAIT_END)(void);
extern int (*IO_READ_NOW)(void*);

void initRand();
INT32 randPar(INT32 limit);
INT32 SumRedOfFirstXnumbers(UINT32 numbers, UINT32 start);
void simpleClearLS(int ClearLsBnr);
void simplePrintLS(int PrintLsBnr, INT32 LsIndex);
void eatRand(int times);

#endif // TYPES_H
