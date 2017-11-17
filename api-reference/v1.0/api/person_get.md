# Get person

Retrieve the properties and relationships of a [person](../resources/person.md) object.

You can get this information via the People API. For examples, see the [Examples](#examples) section and the article [Get relevant information about people](../../../concepts/people_example.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).
 

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | People.Read, People.Read.All    |
|Delegated (personal Microsoft account) | People.Read    |
|Application | People.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->

```http
GET /me/people/{id}
GET /users/{id | userPrincipalName}/people/{id}
```

## Optional query parameters
This method supports the `$format` and `$select` [OData Query Parameters](../../../concepts/query_parameters.md) to help customize the response.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a [person](../resources/person.md) object in the response body.

## Examples
#### Request
The following is an example of the request that gets the person who has this ID in the user's organization. 

<!-- {
  "blockType": "request",
  "name": "get_person_by_id"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/people/33b43a5b-87d6-41ec-91f8-a2610048105f
```
#### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "get_person_by_id",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 200

{
    "id": "33b43a5b-87d6-41ec-91f8-a2610048105f",
    "displayName": "Marketing",
    "givenName": null,
    "surname": null,
    "birthday": "",
    "personNotes": "",
    "isFavorite": false,
    "title": null,
    "companyName": null,
    "yomiCompany": "",
    "department": null,
    "officeLocation": null,
    "profession": "",
    "mailboxType": "GroupMailbox",
    "personType": "ModernGroup",
    "emailAddresses": [
        {
            "address": "Marketing@M365x214355.onmicrosoft.com",
            "rank": 30
        }
    ],
    "phones": [],
    "postalAddresses": [],
    "websites": [],
    "sources": [
        {
            "type": "Directory"
        }
    ]
}
```

#### Request
The following is an example of the request that gets the person who has this ID in the user's organization and restricts the response to the selected properties.

<!-- {
  "blockType": "request",
  "name": "get_person_by_id_with_select"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/people/33b43a5b-87d6-41ec-91f8-a2610048105f?$select=displayName
```
#### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "get_person_by_id_with_select",
  "truncated": true,
  "@odata.type": "microsoft.graph.person"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 200

{
    "id": "33b43a5b-87d6-41ec-91f8-a2610048105f",
    "displayName": "Marketing"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get person",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
