# API method reference template

This template is used for documenting API methods. Methods are both REST CRUD operations for resources in the API or an [action or function](https://learn.microsoft.com/en-us/odata/webapi-8/fundamentals/actions-functions).

## Usage

Example files that use this template are:

- [Get message](/api-reference/beta/api/message-get.md)
- [Create calendar](/api-reference/beta/user-post-calendars.md)

## Template

The following Markdown code block defines the template structure.

Any text surrounded by curly braces (`{}`) is a variable and should be replaced with values according to the following table.

| Variable name | Replace with value |
| ------------- | ------------------ |
| `author-github-username` | The author's GitHub username. |
| `date-of-publication` | The current date (or planned date of publication) in `mm/dd/yyyy` format. |
| `resource-name` | The camelCase name of the resource. |
| `api-method-name` | See [API method name](#api-method-name). |
| `api-method-description` | See [Method description](#method-description). |
| `api-method-endpoint` | The relative endpoint for the api. For example `/me/messages`. |

### API method name

For CRUD operations, name the method as follows:

- Get a single instance: `Get {resource-name}`
- Get a collection of instances: `List {resource-name}`
- Create a new instance: `Create {resource-name}`
- Update an instance: `Update {resource-name}`
- Delete an instance: `Delete {resource-name}`

For actions and functions, determine the name of the action or function from the CSDL, then name the method `{resource-name}: {action-or-function-name}`.

### Method description

For CRUD operation, use a standard description as follows:

- Get a single instance: `Retrieve the properties and relationships of a {resource-name} object.`
- Get a collection of instances: `Get a list of {resource-name} objects.`
- Create a new instance: `Create a new {resource-name} object.`
- Update an instance: `Update a {resource-name} object.`
- Delete an instance: `Delete a {resource-name} object.`

For actions and functions, briefly describe what the action or function does.

~~~md
---
title: {api-method-name}
description: {api-method-description}
author: {author-github-username}
ms.topic: reference
ms.date: {date-of-publication}
ms.localizationpriority: medium
doc_type: apiPageType
---

# {api-method-name}

<!-- markdownlint-disable MD024 -->

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

{api-method-description}

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!--
Before the INCLUDE directive, include the HTML comment that follows this comment.
Replace {permission-name} with the name of the containing file without the `.md` extension, followed by a hyphen (`-`) then `permissions`
-->

<!-- {
  "blockType": "permissions",
  "name": "{permission-name}"
}
-->

<!--
Note that the file referenced in this INCLUDE directive may not exist.
That is OK and should not be treated as a failure.
-->
[!INCLUDE [permissions-table](../includes/permissions/{permission-name}.md)]

## HTTP request

<!-- Show the capitalized HTTP method (GET, POST, etc.) followed by the API endpoint. -->

```http
{http-method} {api-method-endpoint}
```

## Query parameters

<!-- Only include this section for methods that have required query parameters in the API endpoint -->

In the request URL, provide the following required query parameters with values.

<!-- List required query parameters in table format. -->

| Parameter | Type   | Description |
|:----------|:-------|:------------|
| `param`   | String | Description |

## Optional query parameters

<!-- Only include this section for methods that use GET. -->

<!-- If the API does not support query parameters, use this text -->
This method does not support any [OData query parameters](/graph/query-parameters) to help customize the response.

<!-- If the API supports all query parameters, use this text -->
This method supports [OData query parameters](/graph/query-parameters) to help customize the response.

<!-- If the API only supports specific query parameters, specify which ones are supported. -->

## Request headers

<!--
List any request headers relevant to the API method. Always list `Authorization` first. If the API method includes a request body, always include `Content-Type` second.
-->
| Name          | Description                                                                                                 |
|:--------------|:------------------------------------------------------------------------------------------------------------|
| Authorization | `Bearer {token}.` Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type  | `application/json`. Required. |

## Request body

<!-- If the API method does not use a request body, use this text -->
Don't supply a request body for this method.

<!-- If the API method uses a request body, use this text, where "resource" is the type of the request body -->
In the request body, supply a JSON representation of a [resource](link-to-resource-reference.md) object.

## Response

<!--
Use the default HTTP response for the HTTP method:

- GET: 200 OK
- POST: 201 Created
- PATCH: 200 OK
- DELETE: 204 No Content
-->

<!-- If the response has a body, use this text -->
If successful, this method returns a `{http-response}` response code and a {description-of-the-resource-in-body} in the response body.

<!-- If the response has no body, use this text -->
If successful, this method returns a `{http-response}` response code. It doesn't return anything in the response body.

## Example

### Request

The following example shows a request.

<!--
If the api-method-endpoint has any placeholders for IDs or query parameters, generate
sample values for those placeholder and replace them in the example request.
-->

<!--
Before the HTTP code block, include the HTML comment that follows this comment.
Generate a unique request identifier based on the method name
-->

<!-- {
  "blockType": "request",
  "name": "{unique-request-identifier}"
}
-->
```http
{http-method} {api-method-endpoint}
```

### Response

The following example shows the response. The response shown here might be shortened for readability.

<!--
Before the HTTP code block, include the HTML comment that follows this comment.
Get the {namespace} and {resource-name} from the resource's reference document.
-->

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "{namespace}.{resource-name}"
}
-->

<!-- For methods that do not return a response body, use this code block -->

```http
HTTP/1.1 {http-response}
```

<!-- For methods that return a response body, use this code block. Create a JSON example of the response body with reasonable values. -->
```http
HTTP/1.1 {http-response}
Content-type: application/json

{json-representation-of-response}
```

~~~
