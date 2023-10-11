---
title: "Get inactiveAwsRoleFinding"
description: "Read the properties and relationships of an inactiveAwsRoleFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get inactiveAwsRoleFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveAwsRoleFinding](../resources/inactiveawsrolefinding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.inactiveAwsRoleFinding?$filter=identity/authorizationSystem/authorizationSystemId IN [{authorizationSystemIds}]
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [inactiveAwsRoleFinding](../resources/inactiveawsrolefinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_inactiveawsrolefinding"
}
-->
``` http

```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveAwsRoleFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.inactiveAwsRoleFinding",
    "id": "bba11b43-5584-77a0-cf6b-da70e2338543",
    "createdDateTime": "String (timestamp)",
    "permissionsCreepIndex": {
      "@odata.type": "microsoft.graph.permissionsCreepIndex"
    },
    "lastActiveDateTime": "String (timestamp)",
    "actionSummary": {
      "@odata.type": "microsoft.graph.actionSummary"
    }
  }
}
```

