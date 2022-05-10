---
title: "List team"
description: "Get the team resources from the teamDefinition navigation property."
author: "Charlieforce"
ms.localizationpriority: medium
ms.prod: "Teamwork"
doc_type: apiPageType
---

# List team
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the team resources from the teamDefinition navigation property.

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
``` http
GET /teamwork/teamTemplates/{teamTemplateId}/definitions/{teamTemplateDefinitionId}/teamDefinition
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

If successful, this method returns a `200 OK` response code and a collection of [team](../resources/team.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_team"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/teamTemplates/{teamTemplateId}/definitions/{teamTemplateDefinitionId}/teamDefinition
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.team)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.team",
      "id": "097fc3aa-a113-6c36-da4e-11ba9a9c600c",
      "createdDateTime": "String (timestamp)",
      "displayName": "String",
      "description": "String",
      "internalId": "String",
      "classification": "String",
      "specialization": "String",
      "visibility": "String",
      "webUrl": "String",
      "memberSettings": {
        "@odata.type": "microsoft.graph.teamMemberSettings"
      },
      "guestSettings": {
        "@odata.type": "microsoft.graph.teamGuestSettings"
      },
      "messagingSettings": {
        "@odata.type": "microsoft.graph.teamMessagingSettings"
      },
      "funSettings": {
        "@odata.type": "microsoft.graph.teamFunSettings"
      },
      "discoverySettings": {
        "@odata.type": "microsoft.graph.teamDiscoverySettings"
      },
      "isArchived": "Boolean",
      "summary": {
        "@odata.type": "microsoft.graph.teamSummary"
      },
      "tenantId": "String",
      "isMembershipLimitedToOwners": "Boolean"
    }
  ]
}
```

