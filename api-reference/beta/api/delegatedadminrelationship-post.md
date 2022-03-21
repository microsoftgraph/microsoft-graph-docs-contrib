---
title: "Create delegatedAdminRelationship"
description: "Create a new delegatedAdminRelationship object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# Create delegatedAdminRelationship
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /tenantRelationships/delegatedAdminRelationships
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object.

You can specify the following properties when creating a **delegatedAdminRelationship**.

|Property|Type|Description|
|:---|:---|:---|
|accessDetails|[microsoft.graph.delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details of the relationship.|
|customer|[microsoft.graph.delegatedAdminRelationshipCustomerParticipant](../resources/delegatedadminrelationshipcustomerparticipant.md)|The information of the customer of the relationship.|
|displayName|String|The display name of the relationship. This is primarily meant for ease of identification. Must be unique across *all* delegated admin relationships of the partner.|
|duration|Duration|The duration (ISO 8601) of the relationship. Must be a value between P1D and P2Y inclusive.|

## Response

If successful, this method returns a `201 Created` response code and a [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_delegatedadminrelationship_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships
Authorization: Bearer {token}
Content-Type: application/json

{
  "displayName": "Contoso admin relationship",
  "duration": "P730D",
  "customer": {
    "tenantId": "4b827261-d21f-4aa9-b7db-7fa1f56fb163",
    "displayName": "Contoso subsidiary Inc"
  },
  "accessDetails": {
    "unifiedRoles": [
      {
        "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
      },
      {
        "roleDefinitionId": "3a2c62db-5318-420d-8d74-23affee5d9d5"
      }
    ]
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.delegatedAdminRelationship"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Location: https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836

{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#delegatedAdminRelationships",
  "@odata.etag": "W/\"JyIxODAwZTY4My0wMDAwLTAyMDAtMDAwMC02MTU0OWFmMDAwMDAiJw==\"",
  "id": "5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836",
  "displayName": "Contoso admin relationship",
  "duration": "P730D",
  "customer": {
    "tenantId": "4b827261-d21f-4aa9-b7db-7fa1f56fb163",
    "displayName": "Contoso subsidiary Inc"
  },
  "accessDetails": {
    "unifiedRoles": [
      {
        "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
      },
      {
        "roleDefinitionId": "3a2c62db-5318-420d-8d74-23affee5d9d5"
      }
    ]
  },
  "status": "approvalPending",
  "createdDateTime": "2022-02-10T11:24:42.3148266Z",
  "lastModifiedDateTime": "2022-02-10T11:24:42.3148266Z",
  "activatedDateTime": "",
  "endDateTime": "2024-02-10T11:24:42.3148266Z"
}
```

