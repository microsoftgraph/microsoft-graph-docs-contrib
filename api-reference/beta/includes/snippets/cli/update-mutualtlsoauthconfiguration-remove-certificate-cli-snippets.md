---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta directory certificate-authorities mutual-tls-oauth-configurations patch --mutual-tls-oauth-configuration-id {mutualTlsOauthConfiguration-id} --body '{\
  "certificateAuthorities": [\
    {\
      "isRootAuthority": true,\
      "certificateRevocationListUrl": "http://LakeshoreRetail.com/root.crl",\
      "deltaCertificateRevocationListUrl": null,\
      "certificate": "Binary",\
      "issuer": "Lakeshore Retail",\
      "issuerSubjectkeyIdentifier": "SKI"\
    }\
  ]\
}\
'

```