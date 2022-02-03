---
title: "Create granularAdminRelationship"
description: "Create a new granularAdminRelationship object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Create granularAdminRelationship
Namespace: microsoft.graph



Create a new [granularAdminRelationship](../resources/granularadminrelationship.md) object.

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
POST /tenantRelationship/granularAdminRelationships
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [granularAdminRelationship](../resources/granularadminrelationship.md) object.

You can specify the following properties when creating a **granularAdminRelationship**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|**TODO: Add Description** Required.|
|duration|Duration|**TODO: Add Description** Required.|
|partner|[microsoft.partner.customerServiceAdministration.granularAdminRelationshipParticipant](../resources/granularadminrelationshipparticipant.md)|**TODO: Add Description** Required.|
|customer|[microsoft.partner.customerServiceAdministration.granularAdminRelationshipCustomerParticipant](../resources/granularadminrelationshipcustomerparticipant.md)|**TODO: Add Description** Optional.|
|accessDetails|[microsoft.partner.customerServiceAdministration.granularAdminAccessDetails](../resources/granularadminaccessdetails.md)|**TODO: Add Description** Required.|
|status|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|activatedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|endDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [granularAdminRelationship](../resources/granularadminrelationship.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_granularadminrelationship_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/tenantRelationship/granularAdminRelationships
Content-Type: application/json
Content-length: 561

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminRelationship",
  "name": "String",
  "duration": "String (duration)",
  "partner": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipParticipant"
  },
  "customer": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipCustomerParticipant"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.granularAdminAccessDetails"
  },
  "status": "String",
  "activatedDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.partner.customerServiceAdministration.granularAdminRelationship"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.granularAdminRelationship",
  "id": "1e0c63f8-e144-1d2b-5986-1b13565d56af",
  "name": "String",
  "duration": "String (duration)",
  "partner": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipParticipant"
  },
  "customer": {
    "@odata.type": "microsoft.graph.granularAdminRelationshipCustomerParticipant"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.granularAdminAccessDetails"
  },
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "activatedDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

