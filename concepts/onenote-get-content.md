---
title: "Get OneNote content and structure by using the OneNote API"
description: "Get OneNote content and structure by sending a GET request to the target endpoint. Then use query string options to filter your queries and improve performance."
author: "jewan-microsoft"
ms.localizationpriority: high
ms.subservice: "onenote"
ms.date: 06/30/2025
---

# Get OneNote content and structure

**Applies to**: Consumer notebooks on OneDrive | Enterprise notebooks on Microsoft 365

To get OneNote content and structure by using the Microsoft Graph OneNote API, you send a GET request to the target endpoint. For example:

`GET ../onenote/pages/{id}`

If the request is successful, Microsoft Graph returns a `200 OK` HTTP status code and the entities or content that you requested. OneNote entities are returned as JSON objects that conform to the OData version 4.0 specification.

By using query string options, you can filter your queries and improve performance.

> [!NOTE]
> If you're building a solution that supports one of the following scenarios, you will reach OneNote API limitations:
> - Backup/restore OneNote sections
> - Backup/restore OneNote notebooks
>
> For backup and restore operations, see [Best practices for discovering files and detecting changes at scale](/onedrive/developer/rest-api/concepts/scan-guidance?view=odsp-graph-online&preserve-view=true).

<a name="request-uri"></a>

## Construct the request URI

To construct the request URI, start with the service root URL:

`https://graph.microsoft.com/v1.0/me/onenote`

Then append the endpoint of the resource you want to retrieve. ([Resource paths](#resource-paths-for-get-requests) are shown in the next section.)

Your full request URI will look like one of these examples:

- `https://graph.microsoft.com/v1.0/me/onenote/notebooks/{id}/sections`
- `https://graph.microsoft.com/v1.0/me/onenote/notes/pages`
- `https://graph.microsoft.com/v1.0/me/onenote/pages?select=title,self`

> [!NOTE]
> Learn more about the [service root URL](/graph/api/resources/onenote-api-overview#root-url).

<a name="resource-paths"></a>

## Resource paths for GET requests

Use the following resource paths to get pages, sections, section groups, notebooks, and image or file resources.

- [Page collection](#page-collection)
- [Page entity](#page-entity)
- [Page preview](#page-preview)
- [Page HTML content](#page-html-content)
- [Section collection](#section-collection)
- [Section entity](#section-entity)
- [SectionGroup collection](#sectiongroup-collection)
- [SectionGroup entity](#sectiongroup-entity)
- [Notebook collection](#notebook-collection)
- [Notebook entity](#notebook-entity)
- [Image or other file resource](#image-or-other-file-resource)

<a name="get-pages"></a>

### Page collection

Get pages (metadata) across all notebooks.

`../pages[?filter,orderby,select,expand,top,skip,count]`

Get pages (metadata) from a specific section.

`../sections/{section-id}/pages[?filter,orderby,select,expand,top,skip,count,pagelevel]`
 
The default sort order for pages is `lastModifiedTime desc`.

The default query expands the parent section and selects the section's `id`, `name`, and `self` properties.

By default, only the top 20 entries are returned for *GET pages* requests. Requests that don't specify a **top** query string option return an `@odata.nextLink` link in the response that you can use to get the next 20 entries.

For the pages collection in a section, use **pagelevel** to return the indentation level of pages and their order within the section. 

#### Example

`GET ../sections/{section-id}/pages?pagelevel=true`

<a name="get-page"></a> 

### Page entity

Get the metadata for a specific page. 

`../pages/{page-id}[?select,expand,pagelevel]`

Pages can expand the **parentNotebook** and **parentSection** properties.

The default query expands the parent section and selects the section's `id`, `name`, and `self` properties.

Use **pagelevel** to return the indentation level of the page and its order within its parent section.

#### Example

`GET ../pages/{page-id}?pagelevel=true`

<a name="get-page-preview"></a> 

### Page preview

Get text and image preview content for a page.

`../pages/{page-id}/preview`

The JSON response contains the preview content, which you can use to help users identify what's in the page.

```json
{
  "@odata.context":"https://www.onenote.com/api/v1.0/$metadata#Microsoft.OneNote.Api.PagePreview",
  "previewText":"text-snippet"
}
```

The **previewText** property contains a text snippet from the page. Microsoft Graph returns complete phrases, up to a maximum of 300 characters.

### Page HTML content

Get the HTML content of a page.

`../pages/{page-id}/content[?includeIDs]`

(*learn more about [returned HTML content](onenote-input-output-html.md)*) 


Use the **includeIDs=true** query string option to get generated IDs used to [update the page](onenote-update-page.md).

<a name="get-sections"></a>

### Section collection

Get all sections from all notebooks that are owned by the user, including sections in nested section groups.

`../sections[?filter,orderby,select,top,skip,expand,count]`

Get all sections that are directly under a specific section group.

`../sectionGroups/{sectiongroup-id}/sections[?filter,orderby,select,top,skip,expand,count]`

Get all sections that are directly under a specific notebook.

`../notebooks/{notebook-id}/sections[?filter,orderby,select,top,skip,expand,count]`

Sections can expand the **parentNotebook** and **parentSectionGroup** properties.

The default sort order for sections is `name asc`.

The default query expands the parent notebook and parent section group and selects their `id`, `name`, and `self` properties.

<a name="get-section"></a>

### Section entity

Get a specific section.

`../sections/{section-id}[?select,expand]`

Sections can expand the **parentNotebook** and **parentSectionGroup** properties.

The default query expands the parent notebook and parent section group and selects their `id`, `name`, and `self` properties.

<a name="get-section-groups"></a>

### SectionGroup collection

Get all section groups from all notebooks that are owned by the user, including nested section groups.

`../sectionGroups[?filter,orderby,select,top,skip,expand,count]`

Get all section groups that are directly under a specific notebook. 

`../notebooks/{notebook-id}/sectionGroups[?filter,orderby,select,top,skip,expand,count]`

Section groups can expand the **sections**, **sectionGroups**, **parentNotebook**, and **parentSectionGroup** properties.

The default sort order for section groups is `name asc`.

The default query expands the parent notebook and parent section group and selects their `id`, `name`, and `self` properties.

<a name="get-section-group"></a>

### SectionGroup entity

Get a specific section group.

`../sectionGroups/{sectiongroup-id}[?select,expand]`

Section groups can expand the **sections**, **sectionGroups**, **parentNotebook**, and **parentSectionGroup** properties.

The default query expands the parent notebook and parent section group and selects their `id`, `name`, and `self` properties.

<a name="get-notebooks"></a>

### Notebook collection

Get all the notebooks that are owned by the user. 

`../notebooks[?filter,orderby,select,top,skip,expand,count]`

Notebooks can expand the **sections** and **sectionGroups** properties.

The default sort order for notebooks is `name asc`. 

<a name="get-notebook"></a>

### Notebook entity

Get a specific notebook.

`../notebooks/{notebook-id}[?select,expand]`

Notebooks can expand the **sections** and **sectionGroups** properties.

<a name="get-resource"></a>

### Image or other file resource

Get the binary data of a specific resource. 

`../resources/{resource-id}/$value`

You can find the file's resource URI in the page's [output HTML](onenote-input-output-html.md).

For example, an **img** tag includes endpoints for the original image in the **data-fullres-src** attribute and the optimized image in the **src** attribute. 

#### Example

```html
<img 
    src="https://www.onenote.com/api/v1.0/me/notes/resources/{image-id}/$value"  
    data-src-type="image/png"
    data-fullres-src="https://www.onenote.com/api/v1.0/resources/{image-id}/$value"  
    data-fullres-src-type="image/png" ... />
```

And an **object** tag includes the endpoint for the file resource in the **data** attribute. 

#### Example

```html
<object
    data="https://www.onenote.com/api/v1.0/me/notes/resources/{file-id}/$value"
    data-attachment="fileName.pdf" 
    type="application/pdf" ... />
```

> [!NOTE]
> Getting a collection of resources is not supported. 

When you get a file resource, you don't need to include an **Accept** content type in the request.

For more information about GET requests, see the following resources in the Microsoft Graph API REST reference:

- [GET Pages](/graph/api/page-get)
- [GET Sections](/graph/api/section-get)
- [GET SectionGroups](/graph/api/sectiongroup-get)
- [GET Notebooks](/graph/api/notebook-get)




<a name="example"></a>

## Example GET requests

You can query for OneNote entities to get just the information you need. The following examples show some ways you can use [supported query string options](#supported-odata-query-string-options) in GET requests to Microsoft Graph. 

**Remember:**

- All GET requests start with the [service root URL](/graph/api/resources/onenote-api-overview#root-url).
  
  **Examples**: `https://www.onenote.com/api/v1.0/me/notes` and `https://www.onenote.com/api/v1.0/myOrganization/siteCollections/{id}/sites/{id}/notes/`

- Spaces in the URL query string must use %20 encoding.

  **Example**: `filter=title%20eq%20'biology'`

- Property names and OData string comparisons are case-sensitive. We recommend using the OData **tolower** function for string comparisons.

  **Example**: `filter=tolower(name) eq 'spring'`

### filter  

Get all pages that were created by a specific app.
```
[GET] ../pages?filter=createdByAppId eq 'WLID-000000004C12821A'
```
 
### select  

Get the title, OneNote client links, and **contentUrl** link for all pages.

```
[GET] ../pages?select=title,links,contentUrl
```
 
### expand 

Get all notebooks and expand their sections and section groups.  

```
[GET] ../notebooks?expand=sections,sectionGroups
```

<br/>

Get a specific section group and expand its sections and section groups.  

```
[GET] ../sectionGroups/{sectiongroup-id}?expand=sections,sectionGroups
```

<br/>

Get a page and expand its parent section and parent notebook.

```
[GET] ../pages/{page-id}?expand=parentSection,parentNotebook
```

### expand (multiple levels)  

Get all notebooks and expand their sections and section groups, and expand all sections in each section group.  

```
[GET] ../notebooks?expand=sections,sectionGroups(expand=sections)
```
 
> [!NOTE]
> Expanding parents of child entities or expanding children of parent entities creates a circular reference and is not supported.

 
### expand & select (multiple levels)  

Get the name and **self** link for a specific section group, and get the name and **self** links for all its sections.  

```
[GET] ../sectionGroups/{sectiongroup-id}?expand=sections(select=name,self)&select=name,self
```

<br/>

Get the name and **self** link for all sections, and get the name and created time of each section's parent notebook.  

```
[GET] ../sections?expand=parentNotebook(select=name,createdTime)&select=name,self
```

<br/>
 
Get the title and ID for all pages, and get the name of the parent section and parent notebook.

```
[GET] ../pages?select=id,title&expand=parentSection(select=name),parentNotebook(select=name)
```

### expand & levels (multiple levels)  

Get all notebooks, sections, and section groups.  

```
[GET] ../notebooks?expand=sections,sectionGroups(expand=sections,sectionGroups(levels=max;expand=sections))
```
 
### filter

Get all sections that were created in October 2014.

```
[GET] ../sections?filter=createdTime ge 2014-10-01 and createdTime le 2014-10-31
```

<br/>

Get the pages that were created by a specific app since January 1, 2015.

```
[GET] ../pages?filter=createdByAppId eq 'WLID-0000000048118631' and createdTime ge 2015-01-01
```

### filter & expand  

Get all pages in a specific notebook. The API returns 20 entries by default.

```
[GET] ../pages?filter=parentNotebook/id eq '{notebook-id}'&expand=parentNotebook
```

<br/>

Get the name and **pagesUrl** link for all sections from the *School* notebook. OData string comparisons are case-sensitive, so use the **tolower** function as a best practice.

```
[GET] ../notebooks?filter=tolower(name) eq 'school'&expand=sections(select=name,pagesUrl)
```

### filter & select & orderby   

Get the name and **pagesUrl** link for all sections that contain the term *spring* in the section name. Order sections by last modified date.

```
[GET] ../sections?filter=contains(tolower(name),'spring')&select=name,pagesUrl&orderby=lastModifiedTime desc
```
 
### orderby

Get the first 20 pages ordered by **createdByAppId** property and then by most recent created time. The API returns 20 entries by default.

```
[GET] ../pages?orderby=createdByAppId,createdTime desc
```

### filter & top 

Get the five newest pages created since January 1, 2015. The API returns 20 entries by default with a maximum of 100. The default sort order for pages is `lastModifiedTime desc`.

```
[GET] ../pages?filter=createdTime ge 2015-01-01&top=5
```

### filter & top & skip  

Get the next five pages in the result set .

```
[GET] ../pages?filter=createdTime ge 2015-01-01&top=5&skip=5
```

<br/>

And the next five.

```
[GET] ../pages?filter=createdTime ge 2015-01-01&top=5&skip=10
```

> [!NOTE]
> If both **top** and **filter** are applied to the same request, the results include only those entities that match both criteria.
 
### select

Get the name, created time, and **self** link for all sections in the user's notebooks.

```
[GET] ../sections?select=name,createdTime,self
```

<br/>

Get the title, created time, and OneNote client links for a specific page.

```
[GET] ../pages/{page-id}?select=title,createdTime,links
```

### select & expand & filter (multiple levels)  

Get the name and **pagesUrl** link for all sections in the user's default notebook.

```
[GET] ../notebooks?select=name&expand=sections(select=name,pagesUrl)&filter=isDefault eq true
```

### top & select & orderby 

Get the title and **self** link for the first 50 pages, ordered alphabetically by title. The API returns 20 entries by default with a maximum of 100. The default sort order for pages is `lastModifiedTime desc`.

```
[GET] ../pages?top=50&select=title,self&orderby=title
```

### skip & top & select & orderby  

Get pages 51 to 100. The API returns 20 entries by default with a maximum of 100.

```
[GET] ../pages?skip=50&top=50&select=title,self&orderby=title
```

> [!NOTE]
> GET requests for pages that retrieve the default number of entries (that is, they don't specify a **top** expression) return an **\@odata.nextLink** link in the response that you can use to get the next 20 entries.
 

<a name="supported-odata-query-string-options"></a>

## Supported OData query string options

When sending GET requests to Microsoft Graph, you can use OData query string options to customize your query and get just the information you need. They can also improve performance by reducing the number of calls to the service and the size of the response payload.

> [!NOTE]
> For readability, the examples in this article don't use the %20 percent-encoding required for spaces in the URL query string: `filter=isDefault%20eq%20true`
 
| Query option | Example and description |  
|------|------|  
| count | <p>`count=true`</p><p>The count of entities in the collection. The value is returned in the **\@odata.count** property in the response.</p> |  
| expand | <p>`expand=sections,sectionGroups`</p><p>The navigation properties to return inline in the response. The following properties are supported for **expand** expressions:<br /> - Pages: **parentNotebook**, **parentSection**<br /> - Sections: **parentNotebook**, **parentSectionGroup**<br /> - Section groups: **sections**, **sectionGroups**, **parentNotebook**, **parentSectionGroup**<br /> - Notebooks: **sections**, **sectionGroups**</p><p>By default, GET requests for pages expands **parentSection** and select the section's **id**, **name**, and **self** properties. Default GET requests for sections and section groups expand both **parentNotebook** and **parentSectionGroup**, and select the parents' **id**, **name**, and **self** properties. </p><p>Can be used for a single entity or a collection.<br />Separate multiple properties with commas.<br />Property names are case-sensitive.</p> |   
| filter | <p>`filter=isDefault eq true`</p><p>A Boolean expression for whether to include an entry in the result set. Supports the following OData operators and functions:<br /> - Comparison operators: **eq**, **ne**, **gt**, **ge**, **lt**, **le**<br /> - Logical operators: **and**, **or**, **not**<br /> - String functions: **contains**, **endswith**, **startswith**, **length**, **indexof**, **substring**, **tolower**, **toupper**, **trim**, **concat**</p><p>[Property](#onenote-entity-properties) names and OData string comparisons are case-sensitive. We recommend using the OData **tolower** function for string comparisons.<br /><br />**Example**: `filter=tolower(name) eq 'spring'`</p> |  
| orderby | <p>`orderby=title,createdTime desc`</p><p>The [properties](#onenote-entity-properties) to sort by, with an optional **asc** (default) or **desc** sort order. You can sort by any property of the entity in the requested collection.</p><p>The default sort order for notebooks, section groups, and sections is `name asc`, and for pages is `lastModifiedTime desc` (last modified page first).</p><p>Separate multiple properties with commas, and list them in the order that you want them applied. Property names are case-sensitive.</p> |  
| select | <p>`select=id,title`</p><p>The [properties](#onenote-entity-properties) to return. Can be used for a single entity or for a collection. Separate multiple properties with commas. Property names are case-sensitive.</p> |  
| skip | <p>`skip=10`</p><p>The number of entries to skip in the result set. Typically used for paging results.</p> |  
| top | <p>`top=50`</p><p>The number of entries to return in the result set, up to a maximum of 100. The default value is 20.</p> |  

Microsoft Graph also provides the `pagelevel` query string option you can use to get the level and order of pages within the parent section. Applies only to queries for pages in a specific section or queries for a specific page. 

#### Examples 

- `GET ../sections/{section-id}/pages?pagelevel=true` 
- `GET ../pages/{page-id}?pagelevel=true` 

### Supported OData operators and functions

Microsoft Graph supports the following OData operators and functions in **filter** expressions. When using OData expressions, remember:

- Spaces in the URL query string must be replaced with the `%20` encoding.

  **Example:** `filter=isDefault%20eq%20true`

- Property names and OData string comparisons are case-sensitive. We recommend using the OData **tolower** function for string comparisons.

  **Example:** `filter=tolower(name) eq 'spring'`


| Comparison operator | Example |  
|------|------|  
| eq<br />(equal to) | `createdByAppId eq '{app-id}'` |  
| ne<br />(not equal to) | `userRole ne 'Owner'` |  
| gt<br />(greater than) | `createdTime gt 2014-02-23` |  
| ge<br />(greater than or equal to) | `lastModifiedTime ge 2014-05-05T07:00:00Z` |  
| lt<br />(less than) | `createdTime lt 2014-02-23` |  
| le<br />(less than or equal to) | `lastModifiedTime le 2014-02-23` |  

<br/>

| Logical operator | Example |  
|------|------|  
| and | `createdTime le 2014-01-30 and createdTime gt 2014-01-23` |  
| or | `createdByAppId eq '{app-id}' or createdByAppId eq '{app-id}'` |  
| not | `not contains(tolower(title),'school')` |  

<br/>

| String function | Example |  
|------|------|   
| contains | `contains(tolower(title),'spring')` |  
| endswith | `endswith(tolower(title),'spring')` |  
| startswith | `startswith(tolower(title),'spring')` |  
| length | `length(title) eq 19` |  
| indexof | `indexof(tolower(title),'spring') eq 1` |  
| substring | `substring(tolower(title),1) eq 'spring'` |  
| tolower | `tolower(title) eq 'spring'` |  
| toupper | `toupper(title) eq 'SPRING'` |  
| trim | `trim(tolower(title)) eq 'spring'` |  
| concat | `concat(title,'- by MyRecipesApp') eq 'Carrot Cake Recipe - by MyRecipesApp'` |  
 

<a name="properties"></a>

## OneNote entity properties

The **filter**, **select**, **expand**, and **orderby** query expressions can include properties of OneNote entities. 

#### Example

`../sections?filter=createdTime ge 2015-01-01&select=name,pagesUrl&orderby=lastModifiedTime desc` 

Property names are case-sensitive in query expressions.

For the list of properties and property types, see the following resources in the Microsoft Graph API REST reference:

- [GET Pages](/graph/api/page-get)
- [GET Sections](/graph/api/section-get)
- [GET SectionGroups](/graph/api/sectiongroup-get)
- [GET Notebooks](/graph/api/notebook-get)


The **expand** query string option can be used with the following navigation properties:

- Pages: **parentNotebook**, **parentSection**
- Sections: **parentNotebook**, **parentSectionGroup**
- Section groups: **sections**, **sectionGroups**, **parentNotebook**, **parentSectionGroup**
- Notebooks: **sections**, **sectionGroups**


<a name="request-response-info"></a>

## Request and response information for *GET* requests

| Request data | Description |  
|------|------|  
| Protocol | All requests use the SSL/TLS HTTPS protocol. |  
| Authorization header | <p>`Bearer {token}`, where `{token}` is a valid OAuth 2.0 access token for your registered app.</p><p>If missing or invalid, the request fails with a 401 status code. See [Authentication and permissions](permissions-reference.md).</p> |  
| Accept header | <p> `application/json` for OneNote entities and entity sets</p><p> `text/html` for page content</p> | 

<br/>

| Response data | Description |  
|------|------|  
| Success code | A 200 HTTP status code. |  
| Response body | An OData representation of the entity or entity set in JSON format, the page HTML, or file resource binary data.  |  
| Errors | If the request fails, the API returns [errors](onenote-error-codes.md) in the **\@api.diagnostics** object in the response body. |  
| X-CorrelationId header | A GUID that uniquely identifies the request. You can use this value along with the value of the Date header when working with Microsoft support to troubleshoot issues. |  


<a name="root-url"></a>

### Constructing the Microsoft Graph notes service root URL

The Microsoft Graph notes root URL uses the following format for all calls to Microsoft Graph notes:

`https://graph.microsoft.com/{version}/me/onenote/`  

The `version` segment in the URL represents the version of Microsoft Graph that you want to use. Use `v1.0` for stable production code. Use `beta` to try out a feature that's in development. Features and functionality in beta may change, so you shouldn't use it in your production code. 

Use `me` for OneNote content that the current user can access (owned and shared). Use `users/{id}` for OneNote content that the specified user (in the URL) has shared with the current user. Use Microsoft Graph to get user IDs. 


<a name="permissions"></a>

## Permissions for GET requests

To get OneNote content or structure, you'll need to request appropriate permissions. 

The following scopes allow GET requests to Microsoft Graph. Choose the lowest level of permissions that your app needs to do its work.

Choose from:

- Notes.read
- Notes.ReadWrite
- Notes.ReadWrite.All

For more information about permission scopes and how they work, see [Microsoft Graph permissions reference](permissions-reference.md).

<a name="see-also"></a>

## Related content

- [Input and output HTML for OneNote pages](onenote-input-output-html.md)
- [Integrate with OneNote](integrate-with-onenote.md)
- [OneNote Developer Blog](https://go.microsoft.com/fwlink/?LinkID=390183)
- [OneNote development questions on Microsoft Q&A](/answers/topics/microsoft-graph-notes.html)
- [OneNote GitHub repos](https://go.microsoft.com/fwlink/?LinkID=390178)
