---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta policies claims-mapping-policies create --body '{\
 "definition": [\
   "{\"ClaimsMappingPolicy\":{\"Version\":1,\"IncludeBasicClaimSet\":\"true\",\"ClaimsSchema\":[{\"Source\":\"user\",\"ID\":\"department\",\"JwtClaimType\":\"department\"}]}}"\
 ],\
 "displayName": "ExtraClaimsTest"\
}\
'

```