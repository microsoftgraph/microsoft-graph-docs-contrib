---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc policies home-realm-discovery-policies patch --home-realm-discovery-policy-id {homeRealmDiscoveryPolicy-id} --body '{\
    "definition": [\
    "{\"HomeRealmDiscoveryPolicy\":\
     {\"AccelerateToFederatedDomain\":true,\
      \"PreferredDomain\":\"federated.example.edu\",\
      \"AlternateIdLogin\":{\"Enabled\":true}}}"\
  ],\
    "displayName": "Contoso default HRD Policy"\
}\
'

```