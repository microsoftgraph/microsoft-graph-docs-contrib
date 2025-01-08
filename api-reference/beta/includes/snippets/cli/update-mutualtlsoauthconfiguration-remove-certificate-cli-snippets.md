---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta directory certificate-authorities mutual-tls-oauth-configurations patch --mutual-tls-oauth-configuration-id {mutualTlsOauthConfiguration-id} --body '{\
  "certificateAuthorities": [\
    {\
      "isRootAuthority": true,\
      "certificateRevocationListUrl": "http://acme.com/root.crl",\
      "deltaCertificateRevocationListUrl": null,\
      "certificate": "Binary",\
      "issuer": "acme Inc",\
      "issuerSubjectkeyIdentifier": "SKI"\
    }\
  ]\
}\
'

```