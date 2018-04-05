typedef void (*stringDelegate_t)(const char*);

extern "C" void noParameters() {
}

extern "C" void setMiddlemanMergeCB(stringDelegate_t fn) {
  (*fn)("calling from C++");
}
