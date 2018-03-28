# Update applicationSecurityProfile

Update the user-editable properties of a applicationSecurityProfile object. **This method must include the applicationSecurityProfileId as a parameter.**

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |   SecurityEvents.ReadWrite.All  |
|Delegated (personal Microsoft account) |  Not supported  |
|Application |  SecurityEvents.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
This method must include the applicationSecurityProfileId as a parameter.

```http
PATCH /security/applicationSecurityProfiles/{applicationSecurityProfile_Id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code} (required)|
|Prefer | return=representation |

## Request body

In the request body, supply a JSON representation of the values for the values for relevant fields that should be updated. Only the fields that can be updated for an applicationSecurityProfile are listed below. Existing properties that are not included in the request body will maintain their previous values. For best performance you shouldn't include existing values that haven't changed.

| Property   | Type |Description|
|:---------------|:--------|:----------|
|tags|String|User-definable labels that can be applied to an applicationSecurityProfile and can serve as filter conditions (e.g. "HVA", "SAW", etc.)|

## Response

If successful, this method returns a `204 No Content` response code.

If the optional  request header is used, then the method returns a `200 OK` response code and the updated [applicationSecurityProfile](../resources/applicationsecurityprofile.md) object in the response body.

## Example #1

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_applicationsecurityprofile"
}-->

```http
PATCH https://graph.microsoft.com/beta/security/applicationSecurityProfiles/{applicationSecurityProfile_Id}
Content-type: application/json

{
    "tags": ["String"]
}
```

### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ApplicationSecurityProfile"
} -->

```http
HTTP/1.1 204 No Content
```

## Example #2  (using "prefer" request header)

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_applicationsecurityprofile"
}-->

```http
PATCH https://graph.microsoft.com/beta/security/applicationSecurityProfiles/{applicationSecurityProfile_Id}
Content-type: application/json
Prefer: return=representation

{
    "tags": ["String"]
}
```

### Response

Here is an example of the response if the optional `Prefer: return=representation` request header is used.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.ApplicationSecurityProfile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "azureSubscriptionId": "azureSubscriptionId-value",
  "certificateThumbprint": "certificateThumbprint-value",
  "createdDateTime": "datetime-value",
  "deploymentPackageUrl": "deploymentPackageUrl-value",
  "id": "id-value",
  "isSigned": true,
  "lastModifiedDateTime": "String (timestamp)",
  "manifest": "String",
  "name": "String",
  "permissionsRequired": "string",
  "platform": "String",
  "publisher": "String",
  "riskScore": "String",
  "tags": ["String"],
  "type": "String",
  "vendorInformation": {
    "provider": "String",
    "providerVersion": "String",
    "subProvider": "String",
    "vendor": "String"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update applicationSecurityProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->