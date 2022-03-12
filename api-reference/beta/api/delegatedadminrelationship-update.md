---
title: "Update delegatedAdminRelationship"
description: "Update the properties of a delegatedAdminRelationship object."
author: "amharris1331"
ms.localizationpriority: medium
ms.prod: "directory-management"
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
PATCH /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|If-Match|Last known ETag value for the **delegatedAdminRelationship** to be deleted. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the relationship. This is primarily meant for ease of identification. This is set by the partner and cannot be changed by the customer, and cannot be changed by the caller once the relationship is in the "approvalPending" status or beyond. Must be unique across all relationships from the partner for the customer. Required|
|duration|Duration|The duration (ISO 8601) of the relationship. This is set by the partner and cannot be changed by the customer, and once the relationship is in the "approvalPending" status or beyond. Must be a value between P1D and P2Y inclusive. Required.|
|partner|[microsoft.graph.delegatedAdminRelationshipParticipant](../resources/delegatedadminrelationshipparticipant.md)|The information of the partner of the relationship. This is set by the partner and cannot be changed by the customer. Required.|
|customer|[microsoft.graph.delegatedAdminRelationshipCustomerParticipant](../resources/delegatedadminrelationshipcustomerparticipant.md)|The information of the customer of the relationship. This is set either by the partner during relationship creation, or by the system after customer approval of the relationship, and cannot be changed by the customer, and by the partner once the relationship is in the "approvalPending" status or beyond. Optional.|
|accessDetails|[microsoft.graph.delegatedAdminAccessDetails](../resources/delegatedadminaccessdetails.md)|The access details of the relationship. Required.|
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
PATCH https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}
Authorization: Bearer {token}
If-Match: W/"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw=="
Content-Type: application/json

{
  "displayName": "Updated Contoso admin relationship",
  "duration": "P31D",
  "partner": {
    "tenantId": "8777b240-c6f0-4469-9e98-a3205431b836"
  },
  "customer": {
    "tenantId": "52eaad04-13a2-4a2f-9ce8-93a294fadf36"
  },
  "accessDetails": {
    "unifiedRoles": [
      {
        "roleDefinitionId": "44367163-eba1-44c3-98af-f5787879f96a"
      },
      {
        "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
      },
      {
        "roleDefinitionId": "69091246-20e8-4a56-aa4d-066075b2a7a8"
      },
      {
        "roleDefinitionId": "3a2c62db-5318-420d-8d74-23affee5d9d5"
      },
      {
        "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10"
      },
      {
        "roleDefinitionId": "729827e3-9c14-49f7-bb1b-9608f156bbb8"
      },
      {
        "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
      },
      {
        "roleDefinitionId": "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
      },
      {
        "roleDefinitionId": "f2ef992c-3afb-46b9-b7cf-a126ee74c451"
      },
      {
        "roleDefinitionId": "4a5d8f65-41da-4de4-8968-e035b65339cf"
      },
      {
        "roleDefinitionId": "5d6b6bb7-de71-4623-b4af-96380a352509"
      },
      {
        "roleDefinitionId": "17315797-102d-40b4-93e0-432062caca18"
      },
      {
        "roleDefinitionId": "e6d1a23a-da11-4be4-9570-befc86d067a7"
      },
      {
        "roleDefinitionId": "194ae4cb-b126-40b2-bd5b-6091b380977d"
      }
    ]
  },
  "status": "approvalPending"
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.delegatedAdminRelationship",
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#delegatedAdminRelationships/$entity",
  "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMDAwLTAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
  "id": "5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836",
  "displayName": "Updated Contoso admin relationship",
  "duration": "P31D",
  "status": "approvalPending",
  "createdDateTime": "2022-02-10T11:24:42.3148266Z",
  "lastModifiedDateTime": "2022-02-10T11:26:44.9941884Z",
  "partner": {
    "tenantId": "8777b240-c6f0-4469-9e98-a3205431b836"
  },
  "customer": {
    "tenantId": "52eaad04-13a2-4a2f-9ce8-93a294fadf36",
    "displayName": "Contoso"
  },
  "accessDetails": {
    "unifiedRoles": [
      {
        "roleDefinitionId": "44367163-eba1-44c3-98af-f5787879f96a"
      },
      {
        "roleDefinitionId": "29232cdf-9323-42fd-ade2-1d097af3e4de"
      },
      {
        "roleDefinitionId": "69091246-20e8-4a56-aa4d-066075b2a7a8"
      },
      {
        "roleDefinitionId": "3a2c62db-5318-420d-8d74-23affee5d9d5"
      },
      {
        "roleDefinitionId": "62e90394-69f5-4237-9190-012177145e10"
      },
      {
        "roleDefinitionId": "729827e3-9c14-49f7-bb1b-9608f156bbb8"
      },
      {
        "roleDefinitionId": "fe930be7-5e62-47db-91af-98c3a49a38b1"
      },
      {
        "roleDefinitionId": "88d8e3e3-8f55-4a1e-953a-9b9898b8876b"
      },
      {
        "roleDefinitionId": "f2ef992c-3afb-46b9-b7cf-a126ee74c451"
      },
      {
        "roleDefinitionId": "4a5d8f65-41da-4de4-8968-e035b65339cf"
      },
      {
        "roleDefinitionId": "5d6b6bb7-de71-4623-b4af-96380a352509"
      },
      {
        "roleDefinitionId": "17315797-102d-40b4-93e0-432062caca18"
      },
      {
        "roleDefinitionId": "e6d1a23a-da11-4be4-9570-befc86d067a7"
      },
      {
        "roleDefinitionId": "194ae4cb-b126-40b2-bd5b-6091b380977d"
      }
    ]
  }
}
```

