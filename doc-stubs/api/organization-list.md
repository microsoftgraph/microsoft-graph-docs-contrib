---
title: "List organizations"
description: "Get a list of the organization objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List organizations
Namespace: microsoft.graph



Get a list of the [organization](../resources/organization.md) objects and their properties.

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
GET /organization
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

If successful, this method returns a `200 OK` response code and a collection of [organization](../resources/organization.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_organization"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/organization
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.DirectoryServices.organization)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#Microsoft.DirectoryServices.organization",
      "id": "a27d2d7c-2d7c-a27d-7c2d-7da27c2d7da2",
      "deletedDateTime": "String (timestamp)",
      "assignedPlans": [
        {
          "@odata.type": "microsoft.graph.assignedPlan"
        }
      ],
      "businessPhones": [
        "String"
      ],
      "city": "String",
      "country": "String",
      "countryLetterCode": "String",
      "createdDateTime": "String (timestamp)",
      "displayName": "String",
      "licenseMigrationInfo": {
        "@odata.type": "microsoft.graph.licenseMigrationInfo"
      },
      "marketingNotificationEmails": [
        "String"
      ],
      "onPremisesLastSyncDateTime": "String (timestamp)",
      "onPremisesSyncEnabled": "Boolean",
      "postalCode": "String",
      "preferredLanguage": "String",
      "privacyProfile": {
        "@odata.type": "microsoft.graph.privacyProfile"
      },
      "provisionedPlans": [
        {
          "@odata.type": "microsoft.graph.provisionedPlan"
        }
      ],
      "securityComplianceNotificationMails": [
        "String"
      ],
      "securityComplianceNotificationPhones": [
        "String"
      ],
      "state": "String",
      "street": "String",
      "technicalNotificationMails": [
        "String"
      ],
      "verifiedDomains": [
        {
          "@odata.type": "microsoft.graph.verifiedDomain"
        }
      ],
      "tenantType": "String"
    }
  ]
}
```

