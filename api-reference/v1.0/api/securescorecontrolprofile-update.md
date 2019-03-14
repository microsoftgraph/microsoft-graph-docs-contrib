---
title: "Update secureScoreControlProfiles"
description: "Update an editable secureScoreControlProfiles property within any integrated solution to change various properties, such as assignedTo or tenantNote."
localization_priority: Normal
---

# Update secureScoreControlProfiles

Update an editable **secureScoreControlProfiles** property within any integrated solution to change various properties, such as **assignedTo** or **tenantNote**.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |   SecurityEvents.ReadWrite.All.  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | SecurityEvents.ReadWrite.All. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /security/secureScoreControlProfiles/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}. Required.|
|Prefer | return=representation. |

## Request body

In the request body, supply a JSON representation of the values for relevant fields that should be updated. The body **must** contain the `vendorInformation` property with valid `provider` and `vendor` fields. The following table lists the fields that can be updated for a secureScoreControlProfile. The values for existing properties that are not included in the request body will not change. For best performance, don't include existing values that haven't changed

| Property   | Type |Description|
|:---------------|:--------|:----------|
|assignedTo|String|Name of the analyst the control is assigned to for triage, implementation, or remediation.|
|comment|String|Analyst comments on the control (for customer control management).|
|state| String|Analyst driven setting on the control. Possible values are: `default`, `ignored`, `thirdparty`, `reviewed`.|
| vendorInformation | [securityVendorInformation](../resources/securityvendorinformation.md) | Complex type containing details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=SecureScore;). **Provider and vendor fields are required.** |


## Response

If successful, this method returns a `204 No Content` response code.

If the optional request header is used, the method returns a `200 OK` response code and the updated [secureScoreControlProfiles](../resources/securescorecontrolprofile.md) object in the response body.

## Example

### Example 1: Request without Prefer header

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "securescorecontrolprofiles_update"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles/AdminMFA
Content-type: application/json

{
  "assignedTo": "String",
  "comment": "String",
  "state": "String",
  "vendorInformation": {
    "provider": "String",
    "vendor": "String"
  }
}
```

### Response

The following is an example of a successful response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.secureScoreControlProfiles"
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Request with Prefer header

#### Request

The following example shows a request that includes the `Prefer` request header.

<!-- {
  "blockType": "request",
  "name": "securescorecontrolprofiles_update"
}-->

```http
PATCH https://graph.microsoft.com/v1.0/security/secureScoreControlProfiles/AdminMFA
Content-type: application/json

{
  "assignedTo": "String",
  "comment": "String",
  "state": "String",
  "vendorInformation": {
    "provider": "String",
    "vendor": "String"
  }
}
```

#### Response

The following is an example of the response when the optional `Prefer: return=representation` request header is used.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.secureScoreControlProfiles"
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
  "description": "Update secureScoreControlProfiles",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
