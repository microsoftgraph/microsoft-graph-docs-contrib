---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta service-principals claims-policy put --service-principal-id {servicePrincipal-id} --body '{\
  "@odata.type": "#microsoft.graph.customClaimsPolicy",\
  "includeBasicClaimSet": "Boolean",\
  "includeApplicationIdInIssuer": "Boolean",\
  "audienceOverride": "String",\
  "claims": [\
    {\
      "@odata.type": "microsoft.graph.customClaim"\
    }\
  ]\
}\
'

```