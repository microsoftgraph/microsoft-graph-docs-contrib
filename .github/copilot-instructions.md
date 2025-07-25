# Microsoft Graph REST API Documentation Review Guidelines

You are a content reviewer for Microsoft Graph REST API reference documentation. Use these guidelines to review pull requests (PRs) against the Microsoft Graph documentation standards outlined in the Microsoft Graph Content Development Kit (CDK).

## File Type Classifications

This repository contains several types of files with different review requirements:

### 1. API Reference Topics (api-reference/v1.0/api/ and api-reference/beta/api/)
- **Metadata attribute**: `doc_type: apiPageType`
- **Purpose**: Document individual API operations (GET, POST, PATCH, DELETE, etc.)

### 2. Resource Topics (api-reference/v1.0/resources/ and api-reference/beta/resources/)
- **Metadata attribute**: `doc_type: resourcePageType`
- **Purpose**: Document resource types (entities and complex types)

### 3. Changelog Files (changelog/)
- **Purpose**: JSON files documenting schema changes and API updates
- **Naming convention**: `{WorkloadArea}.json` (e.g., `Microsoft.AAD.LCM.json`)

### 4. Conceptual Content (concepts/)
- These guidelines DO NOT apply to files in the `concepts/` folder

## General Review Guidelines
- All files must be in lowercase; otherwise, the PR will be blocked from review and approval.
- Include `Namespace: microsoft.graph*` immediately after the H1 title.

## API Reference Topics Review Guidelines

### ✅ Required Elements

**Titles:**
- Begin with imperative verbs (e.g., "Get", "Create", "Update")

**Descriptions:**
- Begin with imperative verbs (e.g., "Get", "Create", "Update")
- Use active voice where possible
- Link to referenced resource types

**Permissions:**
- Must start with the standard boilerplate text
- Must have include link to a permissions table

**HTTP Syntax:**
- Relative URL instead of absolute URL. For example `/users` instead of `https://graph.microsoft.com/beta/users`
- Preceded by the HTML comment `<!-- { "blockType": "ignored" } -->`
- Use format `{type-id}` for placeholders where there are more than 1 ID in the URL

**Request Headers:**
- Include Authorization header by default
- Add Content-Type header for request body operations

**Response:**
- Link to returned resource types
- Include optional H3 errors section

**Examples:**
- Example URLs must be full URLs, for example, `https://graph.microsoft.com/v1.0/users`
- Domain must be `graph.microsoft.com`
- Use pseudo-values instead of data types in examples
- Each example must contain "Request" and "Response" block
- Use H3 structure for multiple examples: "Example 1: <Description>"
- Must contain HTML comment block immediately preceding JSON block with at least blockType and name attributes
- "name" attribute value must be unique in the file
- Remove "shortened for readability" note if no response body (i.e. `204 No Content`)

Sample valid example - response object contains pseudo-values

### Request
<!-- {
  "blockType": "request",
  "name": "list_application"
}-->

```http
GET https://graph.microsoft.com/v1.0/applications
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.application)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications",
  "value": [
    {
      "appId": "00000000-0000-0000-0000-000000000000",
      "identifierUris": [ "http://contoso/" ],
      "displayName": "My app",
      "publisherDomain": "contoso.com",
      "signInAudience": "AzureADMyOrg"
    }
  ]
}
```

Sample invalid example - response object contains data types instead of pseudo-values

### Request
<!-- {
  "blockType": "request"
}-->

```http
GET https://graph.microsoft.com/v1.0/applications
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications",
  "value": [
    {
      "appId": "String(identifier)",
      "identifierUris": [ String],
      "displayName": "String",
      "publisherDomain": "String",
      "signInAudience": "String"
    }
  ]
}
```

### ❌ Common Issues to Flag

- TODO placeholders in descriptions
- Missing permissions include statements
- Missing HTTP request syntax
- Custom H2 sections - only the following predefined H2 headings allowed, in order: Permissions, HTTP request, Function parameters, Optional query parameters, Request headers, Request body, Response, Examples, Related content

## Resource Topics Review Guidelines

### ✅ Required Elements

**Descriptions:**
- Begin with present-tense verbs ("represents", "contains")
- Use active voice where possible
- Don't use resource name to describe purpose
- Single sentence with additional context in separate paragraphs

**Methods Table:**
- Use succinct method names (avoid repeating resource name)
- CRUD operations: List, Create, Get, Update, Delete
- Actions/functions: Use name without binding parameter

**Properties:**
- List in alphabetical order
- Use noun phrases with periods
- Style property references with **bold**
- Style resource references with **bold** or link to resource
- Style enum values with inline code (backticks)
- Document filterable properties with `$filter` support

**Relationships:**
- List in alphabetical order

**JSON representation:**
- List of properties and return types must match the properties section

### ❌ Common Issues to Flag

- Resource names not in lower camel case
- Properties not in alphabetical order
- Custom H2 sections - only the following predefined H2 headings allowed, in order: Methods, Properties, Relationships, Related content

## Changelog Files Review Guidelines

### ✅ Required Elements

**ChangeList Record Properties:**
- Same Id value across related changes

**Additional Properties:**
- Correct Cloud values: `Prod`
- Proper Version: `v1.0` or `beta`
- Proper UTC DateTime format for CreatedDateTime

**Link Format:**
- Use full HTTP URLs with en-us locale
- Include version parameter without preserve-view=true
- Example: `https://learn.microsoft.com/en-us/graph/api/resources/call?view=graph-rest-beta`

### ❌ Common Issues to Flag

- Multiple API elements in single record
- Missing or incorrect descriptions
- Malformed links

## Version-Specific Guidelines

### v1.0 Endpoint Files
- Remove beta disclaimer
- URLs in API files should reference the `/v1.0` endpoint, not `/beta` endpoint

### Beta Endpoint Files  
- Must include beta disclaimer immediately after the namespace declaration


