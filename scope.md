


Makefile
docs/overview.md
firewall/reverseProxy/main.go
firewall/waf/main.go
testing-env/simulator/main.go



.
├── bin
├── docs
│   ├── index.md
│   └── overview.md
├── firewall
│   ├── reverseProxy
│   └── waf
├── Makefile
└── testing-env
    ├── application
    ├── server
    └── simulator


| pattern                     | target          |
|---------------------------- | --------------- |
| "firewall/reverseProxy/*"   |  reverseProxy   |
| "firewall/waf/*"            |  waf            |
| "testing-env/application/*" |  application    |
| "testing-env/server/*"      |  server         |
| "testing-env/simulator/*"   |  simulator      |
| "docs/*"                    |  documentation  |
| "Makefile"                  |  all            |
| "anything else"             |  skip           |

