# XorStr
A simple constexpr string literal obfuscator. The algorythm was taken from [ADVobfuscator][ADVobfuscator].<br/>
This technique does not hide strings from sophisticated static analysis tools and memory inspection.

## Usage
Copy the file <include/xorstr.h> to your project and include it in the source code.

```cpp
#include <xorstr.h>
#include <iostream>

int main() {
  const std::string str = xorstr("xorstr_test_verify_error");
  std::cout << str << std::endl;
}
```

You can verify that the string `xorstr_test_verify_error` does not exist in **Release** builds:

```sh
~/workspace/xorstr_test strings build/llvm/release/main | grep xorstr_test_verify_error
~/workspace/xorstr_test strings build/llvm/debug/main | grep xorstr_test_verify_error
xorstr_test_verify_error
~/workspace/xorstr_test strings build/msvc/Release/main.exe | grep xorstr_test_verify_error
~/workspace/xorstr_test strings build/msvc/Debug/main.exe | grep xorstr_test_verify_error
xorstr_test_verify_error
```

[ADVobfuscator]: https://github.com/andrivet/ADVobfuscator/blob/master/ADVobfuscator/MetaRandom.h
