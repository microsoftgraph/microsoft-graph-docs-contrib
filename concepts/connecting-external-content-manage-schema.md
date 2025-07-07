---
title: "Register and update schema for the Microsoft Graph connection"
description: "Before adding items into a connection, you must register the schema. Describes example schema, property attributes, semantic labels, and schema update capabilities."
ms.localizationpriority: high
author: mecampos
doc_type: conceptualPageType
ms.subservice: search
ms.date: 11/07/2024
---
<!---<author of this doc: rsamai>--->

# Register and manage schema for the Microsoft 365 Copilot connectors  

This guide provides information on setting the schema and best practices for Microsoft 365 Copilot connectors. 

The connection [schema](/graph/api/resources/externalconnectors-schema) determines how your content is used in various Microsoft 365 Copilot experiences. The schema is a flat list of all the properties that you plan to add to the connection. Each property includes attributes, labels, and aliases. You must register the schema before adding items to the connection.

## Attributes of a schema 
- Property 
- Type 
- Searchable 
- Retrievable 
- Refinable 
- Exact match required 
- Labels 
- Aliases 

## Example schema

The following table represents an example of a possible schema for a work ticket system connector.

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

For schema object and API reference, see [schema](/graph/api/resources/externalconnectors-schema) section in the [Copilot Connector API reference](/graph/api/resources/connectors-api-overview).

## Description and best practices for each schema attribute

### Property 
This attribute refers to the name of the property.  
The following best practices should be considered when choosing property names.  

- Use understandable and unique names—make sure property names are clear, distinct, and easily interpretable by both users and systems. Avoid ambiguous or overly similar names, such as **orgName**, **brOrgName**, and **tpOrgName**. Instead, opt for descriptive names like **parentOrganizationName** or **departmentName**. It helps Copilot understand the property that is related to your query.
- Avoid complex names—simplify overly technical or cryptic names, such as **dataBlob** or **ftxInvIsLead**. Instead, use meaningful names like **incidentRootCause**,**QualifiedSalesLead**, etc. Thus making them more comprehensible and aligned with user queries and search terms.
- Add property descriptions to help Copilot understand your property better and match relevant queries.

> [!NOTE]
> Support for adding property descriptions for custom connectors is expected to be available in Q4 of 2025.
> When using declarative agents (DA), add the description of the properties to the DA instruction set. 

### Searchable
If a property is searchable, its value is added to the full text index. So when a user searches on Copilot, results are returned if there is a match with one of the searchable fields or its [content](connecting-external-content-manage-items.md#content).

Mark a property as searchable if: 
- They contain **textual data** that users might search for. 
- They are **relevant to search queries** (for example, titles, descriptions, tags). 
- You want them to contribute to **search hits** and **snippet generation**. 

Some common examples are:
- title 
- description 
- tags 
- createdBy 
- assignedTo 

Some best practices to consider while marking property as searchable are:
- Avoid marking large binary fields as searchable. 
- Do not mark refinable fields as searchable— refinable and searchable are mutually exclusive. 
- Do not mark all fields as searchable. Limit searchable to properties whose contents need to be searched to get relevant results. 

<!-- markdownlint-disable MD036 -->
![A search for "design" displaying results for hits against the property title and content.](./images/connectors-images/connecting-external-content-manage-items-schema-1.png)

*A search for `design` displays results for hits against the property (`title`) and content.*

### Queryable
Mark properties as queryable when users need to filter their search results based on specific values. For example, properties such as **ticketId**, **teamName**, or **created** can be queryable.  When you query something like `tickets created by William`, Copilot can filter out only the tickets created by the said user and display them.  Prefix matching with wildcard operators (`*`) can further enhance search flexibility. 

Mark a property as queryable if: 
- They are used for **filtering or narrowing down search results**. 
- They represent **categorical or structured data** (for example, status, priority, assigned user). 
- You want to support **custom search experiences** or **faceted navigation**. 

Some common examples are:
- status (for example, open, closed) 
- assignedTo (for example, userEmail or ID) 
- priority (for example, high, medium, low) 
- category or type 

Some best practices to consider while marking property as queryable are:
- Avoid marking large text fields (like descriptions) as queryable. 
- Combine queryable with retrievable so the property can be used and shown in the results. 
- Use refinable if you want the property to appear as a **filter in the UI**. 

In this case, queryable is set as true for the `Tags` property. 

![A search for "tags:design" scoping down results to items with "design" in the tags property.](./images/connectors-images/connecting-external-content-manage-items-schema-3.svg)

*A search for `tags:design` scoping down results to items with `design` in the `tags` property.*

If a property is queryable, you can query against it using knowledge query language (KQL). KQL consists of one or more free-text keywords (words or phrases) or property restrictions. The property name must be included in the query, either specified in the query itself or included in the query programmatically. You can use prefix matching with the wildcard operator (`*`). 

> [!NOTE]
> Suffix matching is not supported.

![A search for "search ba*" displaying results that match this prefix.](./images/connectors-images/connecting-external-content-manage-items-schema-2.svg)
*A search for `search ba\*` displaying results that match this prefix.*

### Retrievable
If a property is retrievable, its value can be returned in search results. Any property that should be shown on the display template or returned from the query must be retrievable. Marking large or too many properties as retrievable increases search latency. Be selective and choose relevant properties.

![A set of retrievable properties rendered as a result.](./images/connectors-images/connecting-external-content-manage-schema-4.svg)

*A set of retrievable properties (`title` and `lastEditedBy`) rendered as a result.*

Mark a property as retrievable if: 
- You want them to be **visible in search results**. 
- They are useful for **displaying context** (for example, title, status, assigned user). 

Some common examples are:
- title 
- summary or description 
- status 
- assignedTo 
- CreatedDateTime 

Some best practices to consider while marking property as retrievable are:
- Avoid marking sensitive or irrelevant fields as retrievable. 
- Use `Retrievable: true` for fields shown in **search cards**, **Copilot prompts**, or **custom UI**. 

### Refinable
If a property is refinable, an admin can configure it as a custom filter in the Microsoft Search results page. 
The **Refinable** property allows a schema property to be used as a **filter** in Microsoft Search experiences. 

When a property is marked as refinable,
- It can be used to **narrow down search results**. 
- It appears as a **refiner control** (like a dropdown or checkbox) in the search UI. 
- It supports **aggregation** in search queries. 

Mark a property as refinable if: 
- They represent **categorical or structured data**. 
- You want users to **filter or group** search results by these values. 

Some common examples are:
- tags (for example, `Finance`, `HR`, `Engineering`) 
- status (for example, `Open`, `Closed`, `In Progress`) 
- priority (for example, `High`, `Medium`, `Low`) 
- category or type 

Some best practices to consider while marking property as refinable are:
- **Refinable properties cannot be searchable** — you must choose one or the other. 
- Only **string or numeric types** can be refinable. 
- Marking too many properties as refinable can **impact** performance.
  
![Refine results by tags, a refinable property.](./images/connectors-images/connecting-external-content-manage-schema-5.svg)
*Refine results by `tags`, a refinable property.*

### Exact match required
If **isExactMatchRequired** is `true` for a property, the full string value is indexed. **isExactMatchRequired** can only be set to `true` for non-searchable properties.

For example, the **ticketId** property is both queryable and specifies exact matching.
- Querying `ticketId:CTS-ce913b61` returns the item with a ticket ID property **CTS-ce913b61**.
- Querying `ticketId:CTS` doesn't return the item with ticket ID **CTS-ce913b61**.

Similarly, the **tags** property also specifies exact matching.
- Querying `tags:contoso` returns any item with the tag **contoso**.
- Querying `tags:contoso` doesn't return items with the tag **contoso ticket**.

For example, there might be a scenario where the item property is a GUID-formatted string. If this property must be matched exactly for item queries, specify that **isExactMatchRequired** is `true`.

The **title** property doesn't specify exact matching. If nothing is specified, then **isExactMatchRequired** is `false`. The **title** property is tokenized based on the tokenization rules of the language of the item content.
- Querying `title:Contoso Title` returns any item that contains `Contoso` or `Title` in the **title** property.

### Semantic labels
A semantic label is a well-known tag published by Microsoft that you can add against a property in your schema. When building a custom Copilot connector using the Microsoft Graph API, applying semantic labels to your schema properties is essential. These labels help Microsoft 365 Copilot, and Microsoft Search understand the meaning and role of each property, enabling better search, summarization, and user experience.   

You can assign semantic labels to your source properties on the Assign property labels page. Labels provide semantic meaning, and let you integrate your connector data into Microsoft 365 experiences. 

Let's consider some of the project management tools like JIRA, Azure Dev ops, Asana etc. For the user who created a feature or work item, each of these platforms might use different terms like owner, ownedBy, assignedTo etc. So, if you have a property, which is intended for a similar purpose you can use the ‘createdby’ semantic label.   

You can assign semantic labels to your source properties using the graph API or from the **Assign property labels** page while using sdk. Labels provide semantic meaning, and let you integrate your connector data into Microsoft 365 experiences.  

| Label              | Description                                                                                                      | Applies To Fields Like                         | 
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
| containerName      | The name of the container. Ex: A project or an OneDrive folder can be a container.                               | projectName, folderName, groupName             | 
| containerUrl       | The URL of the container.                                                                                        | projectUrl, folderLink, groupPage              | 

Add as many labels as you can, but ensure that they are accurately mapped to properties. Don't add a label to a property if it doesn't make sense. Incorrect mappings degrade the experience.

> [!IMPORTANT]
> You must mark properties as retrievable before mapping them to labels.

The label **title** is the most important label. Make sure that you assign a property to this label to allow your connection to participate in the result cluster experience. Incorrectly mapping labels degrades the search experience. It's okay for some labels to not have a property assigned to them.

### Relevance
By applying as many accurately mapped labels as possible, you can also improve the discovery of your content through search. We highly recommend defining as many of the following labels as possible, listed by potential impact on discovery in descending order: 

- title 
- lastModifiedDateTime 
- lastModifiedBy 
- url 
- fileName 
- fileExtension
  
Ensure that your mappings are accurate. When you use a property as a label for a property that contains large content, you might increase search latency and have to wait longer for search to return results. 

### Rank hints 

Rank hints can be applied to textual properties that aren't mapped to semantic labels and are set as searchable. They can be set in a range from **default** to **very high** in the Search admin portal. The hints are consumed with other attributes of each item, to return the most relevant items for a given query. 

Use the following steps to set rank hints:

1. Go to the **Search and intelligence** tab in the admin portal.
1. Select **Customization** > **Relevance tuning**.

  ![Screenshot of the Search and intelligence tab with Relevance Tuning highlighted](https://github.com/microsoftgraph/microsoft-graph-docs-contrib/assets/72018014/6f58a0b7-a558-4709-803b-fcbae9cb4eb3)

2. To see a list of connections that can be tuned, choose **View Details** > **Configure rank hints**.  

  ![Screenshot of the Relevance tuning tab with Configure rank hints highlighted](https://github.com/microsoftgraph/microsoft-graph-docs-contrib/assets/72018014/7472fceb-6062-4079-8205-ce165ff12788)

3. Change the importance weights on available source properties.

  ![Screenshot of the Relevance tuning tab showing importance weights for a selected property](https://github.com/microsoftgraph/microsoft-graph-docs-contrib/assets/72018014/51f79ff9-5a1f-405c-86ba-2aad677fb95b)


### Default result types
Labels also affect how default result types are generated. Adding the title and content labels at a minimum ensures that a result type is created for your connection.
![A default result type with title and a result snippet.](./images/connectors-images/connecting-external-content-manage-schema-6.svg)

*A default result type with `title` and a result snippet.*
Your default result type provides a better experience when you define these labels, when applicable, listed by ascending order:

- title
- url
- lastModifiedBy
- lastModifiedDateTime
- fileName
- fileExtension

when assigning labels ensure,
- The properties that you select to function as labels need to be marked retrievable.
- The properties and their assigned labels must have the same datatype.
- You can map exactly one label to exactly one property.

### Aliases 
Aliases are friendly names for properties that you assign. Aliases are used in queries and selections in refinable property filters. 

Some real-world Examples of Aliases are:
| **Property**      | **Possible aliases**               | **Use case**                                       | 
|-------------------|------------------------------------|----------------------------------------------------| 
| createdBy         | author, owner, submittedBy   | Users asking `Who wrote this?` or `Who submitted?` | 
| title             | subject, heading               | Users asking `What’s the subject of this item?`    | 
| tags              | labels, categories             | Users asking `Show items tagged with Finance`    | 
| filename          | documentName, fileName         | Users asking `Find file named report.docx`      | 
| summary           | description, abstract          | Users asking `Give me a quick overview`            | 

Some best practices to consider while adding aliases are:
- Use aliases for **common synonyms** or **domain-specific terms**. 
- Avoid overly generic or ambiguous aliases. 
- Keep aliases **short and intuitive**. 

### Content property 
The **Microsoft Copilot connector schema** supports a **default property** called `content`. You do not have to define it in the schema like other properties (for example, title, tags, etc.). Instead, it is **directly included in the item payload** when you ingest data. 

This content property is, 
- Semnatically Indexed for text search. 
- Used to generate dynamic snippets in search results. 
- Available to Copilot for summarization and semantic understanding.

Some best practices to consider while using content property are:
- Add any unstructured data to content property to make Copilot do a semantic search on the content to match with your query.
- To ensure semantic search functionality for unstructured or free-flowing content, add properties like **Summary**, **Comment**, **Root cause**, and **Description** to the `content` field. Additionally, retain these properties as separate retrievable entities only if their entire value needs to be retrieved and displayed for UI purposes. You can append multiple properties like `summary`, `description`, etc. to the content field. 

A sample of how `content` property is used while ingesting data: 
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
### Tip if you are using a declarative agent:
- If you are using a Declarative Agent (DA), you can and should provide property descriptions from your **Copilot connector schema** as part of the **instruction set to the declarative agent** in Copilot. 
- This is very useful because it helps the Declarative agent understand: 
    - The **semantic meaning** of each property. 
    - How to **reference and summarize** the data. 
    - How to **respond to user queries** using the indexed content. 
- Define well-formed property descriptions for all properties. It should indicate what the property is about, other names or terms for the property, when it should be used, etc. 
  
## Schema update capabilities

This section includes information about the update capabilities for the [schema](/graph/api/resources/externalconnectors-schema) API.

> [!NOTE]
> We recommend that you reingest items after an update to bring them to the latest schema. Without reingestion, the behavior of the items is inconsistent.

### Add a property

You can add a property to your schema; doing so doesn't require reingestion, but we recommend it.

When you add a property, you can include all the search attributes that you need.

### Add/remove a search capability

You can add specific search attributes to a property, but keep in mind that you can't add a refiner search attribute as a schema change. Also, it isn't possible to use refinable attributes as searchable capabilities.

Adding a search capability requires reingestion.

### Add/remove an alias

You can add or remove aliases, and use them for your search queries.

Consider that you can't remove the original alias of a refinable property that was autocreated by the system.

### Add/remove a semantic label

Adding a semantic label can affect experiences like Relevance and Viva Topics.

## Next steps

- [Add items to the connection](connecting-external-content-manage-items.md)
- [Review the Copilot connectors API reference](/graph/api/resources/connectors-api-overview)
- [Search custom types (externalItem)](search-concept-custom-types.md)

