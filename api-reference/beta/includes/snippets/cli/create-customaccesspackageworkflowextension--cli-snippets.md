---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity-governance entitlement-management access-package-catalogs custom-access-package-workflow-extensions create --access-package-catalog-id {accessPackageCatalog-id} --body '{\
    "displayName": "test_action_0124", \
    "description": "this is for graph testing only", \
    "endpointConfiguration": { \
        "@odata.type": "#microsoft.graph.logicAppTriggerEndpointConfiguration", \
        "subscriptionId": "38ab2ccc-3747-4567-b36b-9478f5602f0d", \
        "resourceGroupName": "EMLogicApp", \
        "logicAppWorkflowName": "customextension_test" \
    }, \
    "authenticationConfiguration": { \
        "@odata.type": "#microsoft.graph.azureAdTokenAuthentication", \
        "resourceId": "f604bd15-f785-4309-ad7c-6fad18ddb6cb" \
    } \
} \
'

```