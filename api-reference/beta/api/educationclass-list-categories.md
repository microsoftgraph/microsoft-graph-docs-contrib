---
title: "List assignmentCategories"
description: "Retrieve a list of category objects."
author: "mmast-msft"
ms.localizationpriority: medium
ms.prod: "education"
doc_type: apiPageType
---

# List assignmentCategories

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [educationCategory](../resources/educationcategory.md) objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                            |
| :------------------------------------- | :----------------------------------------------------------------------------------------------------- |
| Delegated (work or school account)     | EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite |
| Delegated (personal Microsoft account) | Not supported.                                                                                         |
| Application                            | EduAssignments.ReadBasic.All, EduAssignments.ReadWriteBasic.All, EduAssignments.Read.All, EduAssignments.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /education/classes/{id}/assignmentCategories
```

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Delta query support

Delta query supports **assignment categories** to effectively query newly created or modified entities without performing a full read of the Categories every request.

> Deleted operations are not supported.

## Request headers

| Header        | Value                     |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [educationCategory](../resources/educationcategory.md) objects in the response body.

## Examples

### Examples 1: Get Assignment Categories

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["4797d052-ebf5-4018-a088-e11adc6b2cbb"],
  "name": "get_class_categories"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/4797d052-ebf5-4018-a088-e11adc6b2cbb/assignmentCategories
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-class-categories-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-class-categories-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-class-categories-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-class-categories-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-class-categories-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationCategory",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/education/classes('4797d052-ebf5-4018-a088-e11adc6b2cbb')/assignmentCategories",
    "value": [
      {
          "displayName": "Quizzes",
          "id": "f997a279-6bcf-429e-b1d0-d2320c4b84ab"
      },
      {
          "displayName": "Homework",
          "id": "9b8f8f88-ddfc-4aad-9fe9-280513fffc74"
      }
    ]
}
```

### Example 2: Get Assignment Categories with Delta query support

#### Request

The following is an example of the request. 

Use the `$top` parameter to specify the number of categories to be returned. The parameter is optional but use it preferably when you have a long list of categories, otherwise you will get all the categories in the class.

<!-- {
  "blockType": "request",
  "name": "get_classcategories_delta"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignmentcategories/delta?$top=3
```
---

#### Response

The following is an example of the response. 

>**Note:** Take the `@odata.nextLink` from the response to make another call and get the next set of categories.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationCategory",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 344

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(educationCategory)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignmentcategories/delta?$skiptoken=U43TyYWKlRvJ6wWxZOfJvkp22nMqShRw9f-GxBtG2FDy9b1hMDaAJGdLb7n2fh1IVSFtBcXz0jxjIEihcR91dS3R7i8Z2IMtxIn9rKbK9Jvurj6jCH-lDbSNatdesrK0PJ5zpZ_-i8HyqkdtLhWD9tewXVArIqQWJA7gJz8z4paG2q0MU9rixrQOTe7WIXikPiBTUPilHuUW-o1k7cvqke3K7llJbU3G7z_O7WGoVGE.l8-2OcBi9ZWAhwhPnXvJ-kyyk8GNb6-H4o6qofP5YBY",
    "value": [
        {
            "@odata.type": "#microsoft.graph.educationCategory",
            "displayName": "Fall 21",
            "id": "f0fd3e18-87a7-4060-b348-bd2d7a178a9d"
        },
        {
            "@odata.type": "#microsoft.graph.educationCategory",
            "displayName": "reading",
            "id": "10aa7bb1-7f5b-4c12-b1d4-0bf1429a12de"
        },
        {
            "@odata.type": "#microsoft.graph.educationCategory",
            "displayName": "expand",
            "id": "02f60051-806d-4729-a251-4156f7d8e8a5"
        }
    ]
}
```

### Example 3: Get next set of categories with Delta query support

#### Request

The following is an example of the request.

Use the `@odata.nextLink` value from the previous call for this request.

<!-- {
  "blockType": "request",
  "name": "get_classcategories_delta"
}-->

```msgraph-interactive
GET /education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignmentcategories/delta?$skiptoken=U43TyYWKlRvJ6wWxZOfJvkp22nMqShRw9f-GxBtG2FDy9b1hMDaAJGdLb7n2fh1IVSFtBcXz0jxjIEihcR91dS3R7i8Z2IMtxIn9rKbK9Jvurj6jCH-lDbSNatdesrK0PJ5zpZ_-i8HyqkdtLhWD9tewXVArIqQWJA7gJz8z4paG2q0MU9rixrQOTe7WIXikPiBTUPilHuUW-o1k7cvqke3K7llJbU3G7z_O7WGoVGE.l8-2OcBi9ZWAhwhPnXvJ-kyyk8GNb6-H4o6qofP5YBY
```
---

#### Response

The following is an example of the response.

>**Note:** You must continue using the `@odata.nextLink` value for the consequent calls until you get the `@odata.deltaLink` property in the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationCategory",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 344

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(educationCategory)",
    "@odata.deltaLink": "https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignmentcategories/delta?$deltatoken=7ORzTfzlUEGDy6BRE3OC-3ePBbvLHCRe4aJ_hjaBKJxUHmn_ODgoM4xreLS7YRaxc-iACeqCQsT5Tb0u9vn6QXYflO6j0sRgRQlhcfR7DApZYl6uZqiXcR7H0G14btPqR761sKWNc0jgiczrHGF6dGfSQwsLzPT46og-84ArhOU.Jnxvkr08FE-QBvEYstYel3JZUrgwgTauo-GmpbdWeSA",
    "value": [
        {
            "@odata.type": "#microsoft.graph.educationCategory",
            "displayName": "apps",
            "id": "62cee656-f3e7-45c9-958f-5dc3ff47dd97"
        },
        {
            "@odata.type": "#microsoft.graph.educationCategory",
            "displayName": "homework",
            "id": "440c56ea-6c2a-4566-a8ab-56fcda3bc1e3"
        }
    ]
}
```

### Example 4: Get the created and modified categories using Delta token

#### Request

The following is an example of the request.

Use the `@odata.deltaLink` value from the previous call for this request.

<!-- {
  "blockType": "request",
  "name": "get_classcategories_delta"
}-->

```msgraph-interactive
GET /education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignmentcategories/delta?$deltatoken=7ORzTfzlUEGDy6BRE3OC-3ePBbvLHCRe4aJ_hjaBKJxUHmn_ODgoM4xreLS7YRaxc-iACeqCQsT5Tb0u9vn6QXYflO6j0sRgRQlhcfR7DApZYl6uZqiXcR7H0G14btPqR761sKWNc0jgiczrHGF6dGfSQwsLzPT46og-84ArhOU.Jnxvkr08FE-QBvEYstYel3JZUrgwgTauo-GmpbdWeSA
```
---

#### Response

The following is an example of the response.

>**Note:** You must continue using the `@odata.deltaLink` to get the newly created or modified categories since the initial Delta call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationCategory",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 344

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(educationCategory)",
    "@odata.deltaLink": "https://graph.microsoft.com/beta/education/classes/72a7baec-c3e9-4213-a850-f62de0adad5f/assignmentcategories/delta?$deltatoken=7ORzTfzlUEGDy6BRE3OC-3ePBbvLHCRe4aJ_hjaBKJxUHmn_ODgoM4xreLS7YRaxc-iACeqCQsT5Tb0u9vn6QXYflO6j0sRgRQlhcfR7DApVu5vuUKP3uuUhFpYW8Ku3RtYbkmxRlHbDAkK-NyvPczuDOJqONtesUhKgaoXQGmM.4Rw7IYlmUFBcaDmEbJoGDLMbchYNgoLiPNyp4e7z2po",
    "value": [
        {
            "@odata.type": "#microsoft.graph.educationCategory",
            "displayName": "arts",
            "id": "d9fa9b82-04d5-4411-ae4d-848e6fd75575"
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List categories",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
