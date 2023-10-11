---
title: "Get inactiveUserFinding"
description: "Read the properties and relationships of an inactiveUserFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# Get inactiveUserFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inactiveUserFinding](../resources/inactiveuserfinding.md) object.
For example, an admin wants to view the number of user identities in their AWS authorization systems that haven't been used recently and then manage those identities.

The admin logs into the Microsoft Entra Permissions Management portal and navigates to the Permissions Analytics Report. On this report page, the admin will see the "Inactive Users" table. They will navigate to the "Users" tab and use the data in this table to determine what action is needed for the identities.

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
```GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.inactiveUserFinding?$filter=identity/authorizationSystem/authorizationSystemId IN [{authorizationSystemIds}]
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

If successful, this method returns a `200 OK` response code and an [inactiveUserFinding](../resources/inactiveuserfinding.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_inactiveuserfinding"
}
-->
```GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings/graph.inactiveUserFinding?$filter=identity/authorizationSystem/authorizationSystemId IN [{authorizationSystemIds}]
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inactiveUserFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.inactiveUserFinding",
    "id": "5964c3f0-92dd-8fc3-070a-cc0a3a2450e5",
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

