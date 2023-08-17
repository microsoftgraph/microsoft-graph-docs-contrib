---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc identity api-connectors create --body '{\
    "displayName":"Test API",\
    "targetUrl":"https://someotherapi.com/api",\
    "authenticationConfiguration": {\
        "@odata.type":"#microsoft.graph.pkcs12Certificate",\
        "pkcs12Value": "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",\
        "password": "CertificatePassword"\
    }\
}\
'

```