---
title: "Get secureScoreControlProfile"
description: "Retrieve the properties and relationships of a secureScoreControlProfile object."
localization_priority: Normal
ms.prod: "security"
---

# Get secureScoreControlProfile

Retrieve the properties and relationships of an [securescorecontrolprofile](../resources/securescorecontrolprofile.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/securescorecontrolprofiles/{id}
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a **secureScoreControlProfile** object in the response body. If a status code other than 2xx or 404 is returned from a provider or if a provider times out, the response will be a `206 Partial Content` status code with the provider's response in a warning header. For more information, see [Microsoft Graph Security API error responses](../resources/security-error-codes.md).

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_securescorecontrolprofiles"
}-->

```http
GET https://graph.microsoft.com/beta/security/securescorecontrolprofiles/{id}
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.secureScoreControlProfile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "String (identifier)",
  "azureTenantId": "String",
  "actionType": "String",
  "actionUrl": "String",
  "controlCategory": "String",
  "title": "String", 
  "deprecated ": "Boolean",
  "implementationCost ": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "maxScore": "Double",
  "rank ": "Int32",
  "remediation": "String",
  "remediationImpact ": "String",
  "service": "String",
  "threats":  ["String"],
  "tier": "String",
  "userImpact": "String",
  "complianceInformation": [
    {
      "certificationName": "certificationName.value",
      "certificationControl": [
        {
          "name": "name.value",
          "url": "url.value",
        }
      ]
    }         
  ],
  "controlStateUpdates": [
    {
      "assignedTo": "assignedTo.value",
      "comment": "comment.value",
      "state": "state.value",
      "updatedBy": "updatedBy.value",
      "updatedDateTime": "updatedDateTime.value"
    }
  ],
  "vendorInformation": {
    "provider": "SecureScore",
    "providerVersion": null,
    "subProvider": null,
    "vendor": "Microsoft"
  }
}
```

<!--
{
  "type": "#page.annotation",
  "description": "get secureScoreControlProfiles",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
