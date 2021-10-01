---
title: "List groups"
description: "Get a list of the group objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List groups
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [group](../resources/group.md) objects and their properties.

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
GET /groups
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

If successful, this method returns a `200 OK` response code and a collection of [group](../resources/group.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_group"
}
-->
``` http
GET https://graph.microsoft.com/beta/groups
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.group)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.group",
      "id": "ba334daa-4daa-ba33-aa4d-33baaa4d33ba",
      "deletedDateTime": "String (timestamp)",
      "accessType": "String",
      "allowExternalSenders": "Boolean",
      "assignedLabels": [
        {
          "@odata.type": "microsoft.graph.assignedLabel"
        }
      ],
      "assignedLicenses": [
        {
          "@odata.type": "microsoft.graph.assignedLicense"
        }
      ],
      "autoSubscribeNewMembers": "Boolean",
      "classification": "String",
      "createdByAppId": "String",
      "createdDateTime": "String (timestamp)",
      "description": "String",
      "displayName": "String",
      "expirationDateTime": "String (timestamp)",
      "groupTypes": [
        "String"
      ],
      "hasMembersWithLicenseErrors": "Boolean",
      "hideFromAddressLists": "Boolean",
      "hideFromOutlookClients": "Boolean",
      "infoCatalogs": [
        "String"
      ],
      "isArchived": "Boolean",
      "isAssignableToRole": "Boolean",
      "isFavorite": "Boolean",
      "isManagementRestricted": "Boolean",
      "isSubscribedByMail": "Boolean",
      "licenseProcessingState": {
        "@odata.type": "microsoft.graph.licenseProcessingState"
      },
      "mail": "String",
      "mailEnabled": "Boolean",
      "mailNickname": "String",
      "mdmAppId": "String",
      "membershipRule": "String",
      "membershipRuleProcessingState": "String",
      "membershipRuleProcessingStatus": {
        "@odata.type": "microsoft.graph.membershipRuleProcessingStatus"
      },
      "onPremisesDomainName": "String",
      "onPremisesLastSyncDateTime": "String (timestamp)",
      "onPremisesNetBiosName": "String",
      "onPremisesProvisioningErrors": [
        {
          "@odata.type": "microsoft.graph.onPremisesProvisioningError"
        }
      ],
      "onPremisesSamAccountName": "String",
      "onPremisesSecurityIdentifier": "String",
      "onPremisesSyncEnabled": "Boolean",
      "organizationId": "String",
      "preferredDataLocation": "String",
      "preferredLanguage": "String",
      "proxyAddresses": [
        "String"
      ],
      "renewedDateTime": "String (timestamp)",
      "resourceBehaviorOptions": [
        "String"
      ],
      "resourceProvisioningOptions": [
        "String"
      ],
      "securityEnabled": "Boolean",
      "securityIdentifier": "String",
      "theme": "String",
      "unseenConversationsCount": "Integer",
      "unseenCount": "Integer",
      "unseenMessagesCount": "Integer",
      "visibility": "String"
    }
  ]
}
```

