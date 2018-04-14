# Create bookingCurrency

Use this API to create a new bookingCurrency.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |    |
|Delegated (personal Microsoft account) |    |
|Application |  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /bookingCurrencies

```
## Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {code}|

## Request body
In the request body, supply a JSON representation of [bookingCurrency](../resources/bookingcurrency.md) object.


## Response
If successful, this method returns `201, Created` response code and [bookingCurrency](../resources/bookingcurrency.md) object in the response body.

## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_bookingcurrency_from_bookingcurrencies"
}-->
```http
POST https://graph.microsoft.com/beta/bookingCurrencies
Content-type: application/json
Content-length: 30

{
  "symbol": "symbol-value"
}
```
In the request body, supply a JSON representation of [bookingCurrency](../resources/bookingcurrency.md) object.
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookingCurrency"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 50

{
  "id": "id-value",
  "symbol": "symbol-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create bookingCurrency",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->