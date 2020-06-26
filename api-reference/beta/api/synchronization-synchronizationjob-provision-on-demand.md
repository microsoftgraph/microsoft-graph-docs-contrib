---
title: "synchronizationJob: provisionOnDemand"
description: "Select a user and provision the account on-demand."
author: "ArvindHarinder1"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# provisionOnDemand
Namespace: microsoft.graph

Select a user and provision the account on-demand.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     |Directory.ReadWrite.All  |
|Delegated (personal Microsoft account) |Not supported. |
|Application                            |Not supported. | 

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /servicePrincipals/{servicePrincipalsId}/synchronization/jobs/{synchronizationJobId}/provisionOnDemand
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|parameters|[synchronizationJobApplicationParameters](../resources/synchronization-synchronizationjobapplicationparameters.md) collection|Represents the objects that will be provisioned and the synchronization rules executed. The resource is primarily used for on-demand provisioning. |



## Response

If successful, this method returns a `200 OK` response code and a [synchronization](../resources/synchronization-synchronization.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "synchronizationjob_provisionondemand"
}
-->
``` http
POST https://graph.microsoft.com/beta/servicePrincipals/{servicePrincipalsId}/synchronization/jobs/{synchronizationJobId}/provisionOnDemand

Content-Type: application/json
Content-length: 122

{
    "parameters" [{
      "subjects": [{
          "objectId": "9bb0f679-a883-4a6f-8260-35b491b8b8c8",
          "objectType": "User"
      }],
      "ruleId": "ea807875-5618-4f0a-9125-0b46a05298ca"
    }]
  }
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.synchronizationSecretKeyStringValuePair"
}
-->
``` 
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.synchronization",
    "id": "f0f810e1-10e1-f0f8-e110-f8f0e110f8f0",
    "secrets": [
      {
        "@odata.type": "microsoft.graph.synchronizationSecretKeyStringValuePair"
      }
    ]
  }
}
```
