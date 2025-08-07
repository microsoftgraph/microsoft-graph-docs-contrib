---
title: "Register and update schema for the Microsoft Graph connection"
description: "Before adding items into a connection, you must register the schema. Describes example schema, property attributes, semantic labels, and schema update capabilities."
ms.localizationpriority: high
author: mecampos
doc_type: conceptualPageType
ms.subservice: search
ms.date: 11/07/2024
ms.topic: how-to
---
<!---<author of this doc: rsamai>--->

# Register and manage schema for the Microsoft 365 Copilot connectors  

This guide provides guidance on defining schemas and following best practices for Microsoft 365 Copilot connectors.

The connection [schema](/graph/api/resources/externalconnectors-schema) defines how your content is used across Microsoft 365 Copilot experiences. A schema is a flat list of all the properties you plan to add to the connection. Each property includes attributes, labels, and aliases. You must register the schema before adding items to the connection.

The following table shows an example schema for a work ticket system connector:

| Property       | Type             | Searchable         | Queryable          | Retrievable        | Refinable          | Exact match required | Labels               | Aliases    |
|----------------|------------------|--------------------|--------------------|--------------------|--------------------|----------------------|----------------------|------------|
| ticketId       | String           |                    | :heavy_check_mark: |                    |                    | :heavy_check_mark:   |                      | ID         |
| title          | String           | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |                    |                      | title                |            |
| createdBy      | String           | :heavy_check_mark: | :heavy_check_mark: |                    |                    |                      | createdBy            | creator    |
| assignedTo     | String           | :heavy_check_mark: | :heavy_check_mark: |                    |                    |                      |                      |            |
| lastEditedDate | DateTime         |                    | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |                      | lastModifiedDateTime | editedDate |
| lastEditedBy   | String           | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |                    |                      | lastModifiedBy       | edited     |
| workItemType   | String           |                    | :heavy_check_mark: | :heavy_check_mark: |                    |                      |                      | ticketType |
| priority       | Int64            | :heavy_check_mark: |                    |                    |                    |                      |                      |            |
| tags           | StringCollection |                    | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:   |                      |            |
| status         | String           |                    | :heavy_check_mark: | :heavy_check_mark: |                    |                      |                      |            |
| url            | String           |                    |                    |                    |                    |                      | url                  |            |
| resolved       | Boolean          |                    | :heavy_check_mark: | :heavy_check_mark: |                    |                      |                      |            |

For schema object and API reference, see the [schema](/graph/api/resources/externalconnectors-schema) section in the [Copilot Connector API reference](/graph/api/resources/connectors-api-overview).

## Schema attributes

This section describes each schema attribute and provides best practices for using them.

### Property 

This attribute refers to the name of the property.  

**Best practices:**

- **Use clear and unique names** – Ensure property names are easy to understand and distinguish. Avoid ambiguous names like `orgName`, `brOrgName`, or `tpOrgName`. Instead, use descriptive names such as `parentOrganizationName` or `departmentName` to help Copilot interpret the property correctly.
- **Avoid overly technical or cryptic names** – Replace names like `dataBlob` or `ftxInvIsLead` with meaningful alternatives like `incidentRootCause` or `qualifiedSalesLead` to improve readability and relevance to user queries.
- **Add property descriptions** – Descriptions help Copilot better understand and match properties to user queries.

> [!NOTE]
> Support for adding property descriptions to custom connectors is expected in Q4 2025.  
> When using declarative agents (DA), include property descriptions in the DA instruction set.

### Searchable
When a property is marked as searchable, its value is added to the full-text index. This allows Copilot to return results when a user’s query matches the property or its [content](connecting-external-content-manage-items.md#content).

**Mark a property as searchable if:**

- It contains **textual data** users are likely to search for.
- It’s **relevant to search queries** (e.g., titles, descriptions, tags).
- You want it to contribute to **search hits** and **snippet generation**.

**Common examples:** `title`, `description`, `tags`, `createdBy`, `assignedTo`.

**Best practices:**

- Avoid marking large binary fields as searchable.
- Don’t mark refinable fields as searchable—these attributes are mutually exclusive.
- Only mark properties as searchable if they are essential for search relevance.

<!-- markdownlint-disable MD036 -->
![A search for "design" displaying results for hits against the property title and content.](./images/connectors-images/connecting-external-content-manage-items-schema-1.png)

*A search for `design` displays results for hits against the property (`title`) and content.*

### Queryable

Mark a property as **queryable** if users need to filter their search results based on specific values. For example, properties such as `ticketId`, `teamName`, or `created` can be queryable. When a user queries something like `tickets created by William`, Copilot can filter and return only the relevant tickets. Prefix matching with wildcard operators (`*`) can further enhance search flexibility.

**Mark a property as queryable if:**

- It’s used for **filtering or narrowing down search results**.
- It represents **categorical or structured data** (for example, status, priority, assigned user).
- You want to support **custom search experiences** or **faceted navigation**.

**Common examples:**  

`status` (e.g., open, closed), `assignedTo` (e.g., userEmail or ID), `priority` (e.g., high, medium, low), `category`, or `type`.

**Best practices:**

- Avoid marking large text fields (like descriptions) as queryable.
- Combine `Queryable: true` with `Retrievable: true` so the property can be used and shown in results.
- Use `Refinable: true` if you want the property to appear as a **filter in the UI**.

In this example, `tags` is marked as queryable:

![A search for "tags:design" scoping down results to items with "design" in the tags property.](./images/connectors-images/connecting-external-content-manage-items-schema-3.svg)

*A search for `tags:design` scoping down results to items with `design` in the `tags` property.*

If a property is queryable, you can query against it using **KQL (Keyword Query Language)**. KQL supports free-text keywords and property restrictions. The property name must be included in the query, either explicitly or programmatically. Prefix matching with the wildcard operator (`*`) is supported.

> [!NOTE]  
> Suffix matching is not supported.

![A search for "search ba*" displaying results that match this prefix.](./images/connectors-images/connecting-external-content-manage-items-schema-2.svg)
*A search for `search ba\*` displaying results that match this prefix.*

### Retrievable

Mark a property as **retrievable** if its value should be returned in search results. Any property that appears in the display template or is returned from a query must be retrievable. Be selective—marking too many or large properties as retrievable can increase search latency.

![A set of retrievable properties rendered as a result.](./images/connectors-images/connecting-external-content-manage-schema-4.svg)

*A set of retrievable properties (`title` and `lastEditedBy`) rendered as a result.*

**Mark a property as retrievable if:**

- You want it to be **visible in search results**.
- It provides **contextual information** (e.g., title, status, assigned user).

**Common examples:**  
`title`, `summary`, `description`, `status`, `assignedTo`, `createdDateTime`.

**Best practices:**

- Avoid marking sensitive or irrelevant fields as retrievable.
- Use `Retrievable: true` for fields shown in **search cards**, **Copilot prompts**, or **custom UI**.

### Refinable

Mark a property as **refinable** if you want it to be used as a filter in Microsoft Search experiences. Refinable properties can be configured by admins to appear as custom filters on the search results page.

When a property is refinable:

- It can be used to **narrow down search results**.
- It appears as a **refiner control** (e.g., dropdown or checkbox) in the UI.
- It supports **aggregation** in search queries.

**Mark a property as refinable if:**

- It represents **categorical or structured data**.
- You want users to **filter or group** results by these values.

**Common examples:**  
`tags` (e.g., finance, HR, engineering), `status` (e.g., open, closed, in progress), `priority` (e.g., high, medium, low), `category`, `type`.

**Best practices:**

- **Refinable and searchable are mutually exclusive**—a property cannot be both.
- Only **string or numeric types** can be refinable.
- Marking too many properties as refinable can **impact performance**.
  
![Refine results by tags, a refinable property.](./images/connectors-images/connecting-external-content-manage-schema-5.svg)
*Refine results by `tags`, a refinable property.*

### Exact match required

If `isExactMatchRequired` is set to `true` for a property, the full string value is indexed. This setting can **only** be applied to properties that are **not searchable**.

For example, the `ticketId` property is both queryable and requires exact matching:

- Querying `ticketId:CTS-ce913b61` returns the item with ticket ID **CTS-ce913b61**.
- Querying `ticketId:CTS` does **not** return the item with ticket ID **CTS-ce913b61**.

Similarly, the `tags` property also uses exact matching:

- Querying `tags:contoso` returns items with the tag **contoso**.
- Querying `tags:contoso` does **not** return items with the tag **contoso ticket**.

This is especially useful when the property contains values like GUIDs or other identifiers that must be matched exactly. In such cases, set `isExactMatchRequired` to `true`.

If `isExactMatchRequired` is not specified, it defaults to `false`. For example, the `title` property does **not** require exact matching. It is tokenized based on the language rules of the item content:

- Querying `title: Contoso Title` returns items that contain either `Contoso` or `Title` in the title.

### Semantic labels

A **semantic label** is a well-known tag published by Microsoft that you can assign to a property in your schema. When building a custom Copilot connector using the Microsoft Graph API, applying semantic labels is essential. These labels help Microsoft 365 Copilot and Microsoft Search understand the meaning and role of each property, improving search, summarization, and overall user experience.

You can assign semantic labels using the Graph API or from the **Assign property labels** page when using the SDK. Labels provide semantic meaning and allow your connector data to integrate seamlessly into Microsoft 365 experiences.

For example, different project management tools (like JIRA, Azure DevOps, Asana) might use different terms for the user who created a work item—such as `owner`, `ownedBy`, or `assignedTo`. If your property serves a similar purpose, you can assign the `createdBy` semantic label. 

You can assign semantic labels to your source properties using the graph API or from the **Assign property labels** page while using sdk. Labels provide semantic meaning and let you integrate your connector data into Microsoft 365 experiences.  

| Label              | Description                                                                                                      | Applies to fields like                         | 
|--------------------|------------------------------------------------------------------------------------------------------------------|------------------------------------------------| 
| title              | The main name or heading of the item that you want shown in search and other experiences.                        | documentTitle, ticketSubject, reportName       | 
| url                | The target URL of the item in the data source. The direct link to open the item in its original system.          | documentLink, ticketUrl, recordUrl             | 
| createdBy          | Identifies the user who originally created the item in the data source. Useful for filtering and context.        | authorEmail, submittedBy, createdByUser        | 
| lastModifiedBy     | The name of the user who most recently edited the item in the data source.                                     | editorEmail, updatedBy, lastChangedBy          | 
| authors            | The names of all the people who participated/collaborated on the item in the data source.                        | authorName, writer, reportAuthor               | 
| createdDateTime    | The date and time that the item was created in the data source.                                                  | createdOn, submissionDate, entryDate           | 
| lastModifiedDateTime | The date and time that the item was last modified in the data source.                                          | lastUpdated, modifiedOn, changeDate            | 
| fileName           | The name of the file in the data source.                                                      | projectUrl, folderLink, groupPage              | 
| fileExtension      | The extension of the file in the data source.                                                 | documentType, attachmentType, format           | 
| iconUrl            | The URL of an icon.                                                                                              | thumbnailUrl, logo, previewImage               | 
| containerName      | The name of the container. Ex: A project or OneDrive folder can be a container.                               | projectName, folderName, groupName             | 
| containerUrl       | The URL of the container.                                                                                        | projectUrl, folderLink, groupPage              | 

**Best practices:**

- Add as many labels as are relevant, but ensure they are accurately mapped.
- Do **not** assign a label to a property if it doesn’t match its purpose—incorrect mappings degrade the experience.

> [!IMPORTANT]  
> Properties must be marked as **retrievable** before they can be mapped to labels.

The `title` label is the most important. Assigning a property to this label enables your connection to participate in the **result cluster experience**. While not all labels need to be used, ensure that the ones you do assign are meaningful and accurate.

### Relevance

Applying accurately mapped semantic labels improves the discoverability of your content through search. Microsoft recommends defining as many of the following labels as possible, listed in descending order of their impact on discovery:  
**title**, **lastModifiedDateTime**, **lastModifiedBy**, **url**, **fileName**, and **fileExtension**.

Ensure that your label mappings are accurate. Assigning a label to a property that contains large content might increase search latency and delay results.

### Rank hints 

Rank hints can be applied to textual properties that:

- Are **searchable**
- Are **not mapped** to semantic labels

Rank hints help prioritize certain properties in search results. You can set their importance from **default** to **very high** in the Microsoft 365 Search admin portal. These hints are used alongside other item attributes to return the most relevant results.

To configure rank hints:

1. Go to the **Search and intelligence** tab in the Microsoft 365 admin portal.
2. Select **Customization** > **Relevance tuning**.

  ![Screenshot of the Search and intelligence tab with Relevance Tuning highlighted](https://github.com/microsoftgraph/microsoft-graph-docs-contrib/assets/72018014/6f58a0b7-a558-4709-803b-fcbae9cb4eb3)

3. Under **Relevance tuning**, choose **View details** > **Configure rank hints**. 

  ![Screenshot of the Relevance tuning tab with Configure rank hints highlighted](https://github.com/microsoftgraph/microsoft-graph-docs-contrib/assets/72018014/7472fceb-6062-4079-8205-ce165ff12788)

4. Change the importance weights on available source properties.

  ![Screenshot of the Relevance tuning tab showing importance weights for a selected property](https://github.com/microsoftgraph/microsoft-graph-docs-contrib/assets/72018014/51f79ff9-5a1f-405c-86ba-2aad677fb95b)

### Default result types

Semantic labels also influence how **default result types** are generated. At a minimum, assigning the `title` and `content` labels ensures that a result type is created for your connection.

![A default result type with title and a result snippet.](./images/connectors-images/connecting-external-content-manage-schema-6.svg)

*A default result type with `title` and a result snippet.*

To enhance the default result experience, define the following labels when applicable (listed in ascending order of impact):  
**title**, **url**, **lastModifiedBy**, **lastModifiedDateTime**, **fileName**, and **fileExtension**.

**Validation checklist for assigning labels:**

- Properties assigned to labels must be marked as **retrievable**.
- The **data type** of the property must match the expected type for the label.
- Each label should be mapped to **exactly one property**.

### Aliases 

**Aliases** are friendly names assigned to properties. They are used in queries and in refinable property filters to improve usability and query flexibility.

Here are some real-world examples:

| Property    | Possible aliases              | Use case                                       | 
|:-------------------|:------------------------------------|:----------------------------------------------------| 
| createdBy         | author, owner, submittedBy   | Users asking `Who wrote this?` or `Who submitted?` | 
| title             | subject, heading               | Users asking `What’s the subject of this item?`    | 
| tags              | labels, categories             | Users asking `Show items tagged with Finance`    | 
| filename          | documentName, fileName         | Users asking `Find file named report.docx`      | 
| summary           | description, abstract          | Users asking `Give me a quick overview`            | 

**Best practices for aliases:**

- Use aliases for **common synonyms** or **domain-specific terms**.
- Avoid overly generic or ambiguous aliases.
- Keep aliases **short and intuitive**.

### Content property 

The **Microsoft Copilot connector schema** supports a **default property** called `content`. You do not have to define it in the schema like other properties (for example, title, tags, etc.). Instead, it is **directly included in the item payload** when you ingest data. 

The Microsoft Copilot connector schema includes a built-in `content` property. Unlike other properties (such as `title` or `tags`), you do **not** need to define it in the schema. Instead, it is **included directly in the item payload** during data ingestion.

The `content` property is:

- Semantically indexed for **text search**.
- Used to generate **dynamic snippets** in search results.
- Available to Copilot for **summarization** and **semantic understanding**.

**Best practices for using the content property:**

- Add any **unstructured data** to the `content` property to enable Copilot to perform semantic search and match queries effectively.
- For unstructured or free-form content, include properties like `summary`, `comment`, `rootCause`, and `description` in the `content` field.
- Retain these properties as separate retrievable fields **only if** their full value needs to be displayed in the UI.
- You can **append multiple properties** (e.g., `summary`, `description`) into the `content` field to enrich semantic understanding.

A sample of how the `content` property is used while ingesting data: 
```json 
{ 
"@odata.type": "microsoft.graph.externalItem", 
"acl": [ 
{ 
"type": "everyone", 
"value": "everyone", 
"accessType": "grant" 
} 
], 

"properties": { 
"title": "Payment Gateway Error", 
"priority": "High", 
"assignee": "john.doe@contoso.com" 
}, 

"content": { 
"value": "Rootcause : Error in payment gateway : MoreDetails about the error.......", 
"type": "text" 
} 
}
``` 

### Declarative agents and property descriptions

If you're using a **declarative agent (DA)**, you should include property descriptions from your **Copilot connector schema** in the **instruction set** provided to the agent. This helps the DA understand:

- The **semantic meaning** of each property
- How to **reference and summarize** the data
- How to **respond to user queries** using the indexed content

Define clear, well-formed descriptions for all properties. A good description should explain:

- What the property represents
- Any alternate names or terms
- When and how it should be used


## Schema update capabilities

This section outlines the update capabilities of the [schema](/graph/api/resources/externalconnectors-schema) API.

> [!NOTE]  
> After updating your schema, we recommend reindexing items to align them with the latest schema. Without reingestion, item behavior might be inconsistent.

### Add a property

You can add a new property to your schema. While reingestion is not required, it is recommended. When adding a property, include all necessary search attributes.

### Add or remove a search capability

You can modify search attributes for a property. However:

- You **cannot** add a **refinable** attribute as part of a schema update.
- A property **cannot** be both **searchable** and **refinable**.

Adding or removing a search capability **requires reingestion**.

### Add or remove an alias

You can add or remove aliases for use in search queries. However, aliases that were **autocreated by the system** for refinable properties **cannot be removed**.

### Add or remove a semantic label

You can assign or remove semantic labels. These labels influence experiences such as **Relevance** and **Viva Topics**.

## Next steps

- [Add items to the connection](connecting-external-content-manage-items.md)
- [Review the Copilot connectors API reference](/graph/api/resources/connectors-api-overview)
- [Search custom types (externalItem)](search-concept-custom-types.md)

