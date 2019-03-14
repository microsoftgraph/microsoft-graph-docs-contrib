---
title: "List secureScoreControlProfiles"
description: "Retrieve the properties and relationships of a secureScoreControlProfiles object."
localization_priority: Normal
---

# List secureScoreControlProfiles

Retrieve the properties and relationships of a [secureScoreControlProfiles](../resources/securescorecontrolprofile.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.Read.All, SecurityEvents.ReadWrite.All.   |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | SecurityEvents.Read.All, SecurityEvents.ReadWrite.All. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /security/secureScoreControlProfiles
GET /security/secureScoreControlProfiles?$top=1
GET /security/secureScoreControlProfiles?$filter={property} eq '{property-value}'
```

## Optional query parameters

This method supports the following [OData query parameters](/graph/query-parameters) to help customize the response:

- `$count`
- `$filter`
- `$skip`
- `$top` will return the aggregated top results from each security API provider.  

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {code}. Required.|

## Request body

Do not supply a request body for this method. The request body will be ignored.

## Response

If successful, this method returns a `200 OK` response code and a **secureScoreControlProfiles** object in the response body.

## Example

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_securescorecontrolprofiles"
}-->

```http
GET https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.secureScoreControlProfiles"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json


{
  "value": [
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
  ]
}
```


<!--
{
  "type": "#page.annotation",
  "description": "List secureScoreControlProfiles",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
