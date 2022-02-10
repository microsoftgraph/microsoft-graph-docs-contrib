---
title: "Update delegatedAdminRelationship"
description: "Update the properties of a delegatedAdminRelationship object."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "gdap"
doc_type: apiPageType
---

# Update delegatedAdminRelationship
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object.

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
PATCH /tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the relationship. This is primarily meant for ease of identification. This is set by the partner and cannot be changed by the customer, and cannot be changed by the caller once the relationship is in the "approvalPending" status or beyond. Must be unique across all relationships from the partner for the customer. Required|
|duration|Duration|The duration (ISO 8601) of the relationship. This is set by the partner and cannot be changed by the customer, and once the relationship is in the "approvalPending" status or beyond. Must be a value between P1D and P2Y inclusive. Required.|
|partner|[microsoft.partner.customerServiceAdministration.delegatedAdminRelationshipParticipant](../resources/delegatedadminrelationshipparticipant.md)|The information of the partner of the relationship. This is set by the partner and cannot be changed by the customer. Required.|
|customer|[microsoft.partner.customerServiceAdministration.delegatedAdminRelationshipCustomerParticipant](../resources/delegatedadminrelationshipcustomerparticipant.md)|The information of the customer of the relationship. This is set either by the partner during relationship creation, or by the system after customer approval of the relationship, and cannot be changed by the customer, and by the partner once the relationship is in the "approvalPending" status or beyond. Optional.|
|accessDetails|[microsoft.partner.customerServiceAdministration.delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details of the relationship. Required.|
|status|String|The status of the relationship. Optional.|
|createdDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship was created in UTC. This is set by the system and cannot be set by the caller. Optional.|
|lastModifiedDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship was last modified in UTC. This is set by the system and cannot be set by the caller. Optional.|
|activatedDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship became active in UTC. This is set by the system and cannot be set by the caller. Optional.|
|endDateTime|DateTimeOffset|The date and time (ISO 8601) at which this relationship either terminated or expired, or in the case of an active relationship, the date and time at which it is *scheduled* to expire (i.e., endDateTime = activatedDateTime + duration) in UTC. This is set by the system and cannot be set by the caller. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [delegatedAdminRelationship](../resources/delegatedadminrelationship.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_delegatedadminrelationship"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationship/delegatedAdminRelationships/{delegatedAdminRelationshipId}
Content-Type: application/json
Content-length: 529

{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
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
  "activatedDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
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

