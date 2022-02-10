---
title: "Create delegatedAdminRelationship"
description: "Create a new delegatedAdminRelationship object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
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
POST /tenantRelationship/delegatedAdminRelationships
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
|displayName|String|The display name of the relationship. This is primarily meant for ease of identification. This is set by the partner and cannot be changed by the customer, and cannot be changed by the caller once the relationship is in the "approvalPending" status or beyond. Must be unique across all relationships from the partner for the customer. Required.|
|duration|Duration|The duration (ISO 8601) of the relationship. This is set by the partner and cannot be changed by the customer, and once the relationship is in the "approvalPending" status or beyond. Must be a value between P1D and P2Y inclusive. Required.|
|customer|[microsoft.partner.customerServiceAdministration.delegatedAdminRelationshipCustomerParticipant](../resources/delegatedadminrelationshipcustomerparticipant.md)|The information of the customer of the relationship. This is set either by the partner during relationship creation, or by the system after customer approval of the relationship, and cannot be changed by the customer, and by the partner once the relationship is in the "approvalPending" status or beyond. Optional.|
|accessDetails|[microsoft.partner.customerServiceAdministration.delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details of the relationship. Required.|


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
POST https://graph.microsoft.com/beta/tenantRelationship/delegatedAdminRelationships
Content-Type: application/json
Content-length: 561

{
  "displayName": "String",
  "duration": "String (duration)",
  "customer": {
    "@odata.type": "microsoft.graph.delegatedAdminRelationshipCustomerParticipant"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.partner.customerServiceAdministration.delegatedAdminRelationship"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.partner.customerServiceAdministration.delegatedAdminRelationship",
  "id": "1e0c63f8-e144-1d2b-5986-1b13565d56af",
  "displayName": "String",
  "duration": "String (duration)",
  "partner": {
    "@odata.type": "microsoft.graph.delegatedAdminRelationshipParticipant"
  },
  "customer": {
    "@odata.type": "microsoft.graph.delegatedAdminRelationshipCustomerParticipant"
  },
  "accessDetails": {
    "@odata.type": "microsoft.graph.delegatedAdminAccessDetails"
  },
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "activatedDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```

