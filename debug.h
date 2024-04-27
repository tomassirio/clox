#ifndef CLOX_DEBUG_H
#define CLOX_DEBUG_H

#include "chunk.h"

void disassembleChunk(Chunk* chunk, const char* name);
int disassembleInstruction(Chunk* chunk, int offset);
static int simpleInstruction(const char *string, int offset);
static int constantInstruction(const char *name, Chunk* chunk, int offset);

#endif //CLOX_DEBUG_H
