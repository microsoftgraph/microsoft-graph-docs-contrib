# Update ipSecurityProfile

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update the user-editable properties of a ipSecurityProfile object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  SecurityEvents.ReadWrite.All  |
|Delegated (personal Microsoft account) | Not supported.  |
|Application | SecurityEvents.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
> **Note:** You must include the ipSecurityProfile id as a parameter with this method.

```http
PATCH /security/ipSecurityProfiles/{ipSecurityProfile_Id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer {code}. Required.|
|Prefer | return=representation |

## Request body

In the request body, supply a JSON representation of the values for the relevant fields to update. The following table lists the fields that can be updated for an **ipSecurityProfile**. Existing properties that are not included in the request body will not change. For best performance, don't include existing values that haven't changed.

| Property   | Type |Description|
|:---------------|:--------|:----------|
|tags|String|User-definable labels that can be applied to an ipSecurityProfile and can serve as filter conditions (e.g. "HVA", "SAW", etc.)|

## Response

If successful, this method returns a `204 No Content` response code.

If the optional  request header is used, then the method returns a `200 OK` response code and the updated [ipSecurityProfile](../resources/ipsecurityprofile.md) object in the response body.

## Example 1

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_ipsecurityprofile"
}-->

```http
PATCH https://graph.microsoft.com/beta/security/ipSecurityProfiles/{ipSecurityProfile_Id}
Content-type: application/json

{
    "tags": ["String"]
}
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ipSecurityProfile"
} -->

```http
HTTP/1.1 204 No Content
```

## Example 2

### Request

The following is an example of the request using the `Prefer` request header.
<!-- {
  "blockType": "request",
  "name": "update_ipsecurityprofile"
}-->

```http
PATCH https://graph.microsoft.com/beta/security/ipSecurityProfiles/{ipSecurityProfile_Id}
Content-type: application/json
Prefer: return=representation

{
  "tags": ["String"]
}
```

### Response

The following is an example of the response when the optional `Prefer: return=representation` request header is used.
> **Note:** The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ipSecurityProfile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "address": "address-value",
  "asn": 99,
  "azureSubscriptionId": "azureSubscriptionId-value",
  "city": "city-value",
  "countryOrRegionCode": "countryOrRegionCode-value",
  "createdDateTime": "datetime-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update ipSecurityProfile",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->