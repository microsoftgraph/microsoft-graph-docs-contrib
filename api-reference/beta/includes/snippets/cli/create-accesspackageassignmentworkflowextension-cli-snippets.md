---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity-governance entitlement-management access-package-catalogs access-package-custom-workflow-extensions create --access-package-catalog-id {accessPackageCatalog-id} --body '{\
   "value":{\
      "@odata.type":"#microsoft.graph.accessPackageAssignmentWorkflowExtension",\
      "displayName":"test_action_0127_email",\
      "description":"this is for graph testing only",\
      "endpointConfiguration":{\
         "@odata.type":"#microsoft.graph.logicAppTriggerEndpointConfiguration",\
         "subscriptionId":"38ab2ccc-3747-4567-b36b-9478f5602f0d",\
         "resourceGroupName":"test",\
         "logicAppWorkflowName":"elm-extension-email"\
      },\
      "authenticationConfiguration":{\
         "@odata.type":"#microsoft.graph.azureAdPopTokenAuthentication"\
      }\
   }\
}\
'

```