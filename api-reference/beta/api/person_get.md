# Get person

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of a [person](../resources/person.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).
 
|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | People.Read, User.ReadBasic.All    |
|Delegated (personal Microsoft account) | People.Read    |
|Application | Not supported. |

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
If successful, this method returns a `200 OK` response code and [person](../resources/person.md) object in the response body.

## Examples
#### Request
The following is an example of the request that gets the person who has this ID in the user's organization. 

<!-- {
  "blockType": "request",
  "name": "get_person_by_id_beta"
}-->
```http
GET https://graph.microsoft.com/beta/me/people/33b43a5b-87d6-41ec-91f8-a2610048105f
```

#### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "get_person_by_id_beta",
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
  "jobTitle": null,
  "companyName": null,
  "yomiCompany": "",
  "department": null,
  "officeLocation": null,
  "profession": "",
  "imAddress": null,
  "scoredEmailAddresses": [
    {
      "address": "Marketing@M365x214355.onmicrosoft.com",
      "relevanceScore": 30
    }
  ],
  "phones": [],
  "postalAddresses": [],
  "websites": [],
  "personType": {
    "class": "Group",
    "subclass": "UnifiedGroup"
  }
}
```

#### Request
The following is an example of the request that gets the person who has this ID in the user's organization and restricts the response to the selected properties. 

<!-- {
  "blockType": "request",
  "name": "get_person_by_id_with_select_beta"
}-->
```http
GET https://graph.microsoft.com/beta/me/people/33b43a5b-87d6-41ec-91f8-a2610048105f?$select=displayName
```

#### Response
The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "get_person_by_id_with_select_beta",
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
