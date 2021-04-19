---
title: "Try Graph Connector APIs using Postman"
description: "Try Graph Connector APIs using Postman"
author: "mecampos"
localization_priority: Priority
ms.author: "mecampos"
ms.prod: "data-inflow"
---

# Try Graph Connector APIs using Postman

In this topic, learn to play with the Graph Connector APIs using Postman.

## Prerequisites

Either a Microsoft account or work or school account.

[Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program). (Microsoft 365 developer subscription)

Register application on the [App Registration](#_Step_3_-) Portal.

## Step 1 - Import the Microsoft Graph Postman collection

To use the Postman collection, you need to import it into your Postman workspace. Do this from the web browser.

1. Go to [Postman](https://identity.getpostman.com/signup) and sign up. If you already have a Postman account, you can [sign in](https://identity.getpostman.com/login).

2. Once you sign in, go to the &quot;My workspace&quot;.

![My Workspace](./images/connectors-images/02-postman-my-workspace.png)

3. Once you go into &quot;My workspace&quot;, click the &quot;Import&quot; button.

![Import](./images/connectors-images/03-postman-import.png)

4. In the dialog that opens, select &quot;Link&quot; tab and enter the following URL - [https://www.postman.com/collections/61bfc772fe030514b062](https://www.postman.com/collections/61bfc772fe030514b062) in the textbox.

![](./images/connectors-images/04-postman-link.png)

5. Click Continue.

![](./images/connectors-images/ .png)

6. Click Import.

You should now see the Microsoft graph Connectors API collection inside Postman.

![](./images/connectors-images/ .png)

## Step 2 - (Optional - Postman Web browser only) Download the Postman Agent

To use this Postman collection in your web browser, download the [Postman Desktop Agent](https://www.postman.com/downloads). You can&#39;t use Postman for the web without this due to CORS restrictions in the web browser.

Note: You don&#39;t need the agent if you&#39;re using the Postman for Windows app. If you open Postman for Windows, you will see this collection in your workspace.

## Step 3 - Create an Azure AD application

To use this collection in your own developer tenant, create an Azure AD application and give it the appropriate permissions for the requests you want to call. If you don&#39;t have a developer tenant, you can sign up for one through the Microsoft 365 Developer Program.

1. Go to [portal.azure.com](https://portal.azure.com/) and sign in with your developer tenant administrator account.
2. Under Azure Services, click Azure Active Directory.
3. On the left menu, click App registrations.
4. On the horizontal menu, click New registration.
5. Set the Application name to **Parts Inventory**.
6. Set the Redirect URI to https://oauth.pstmn.io/v1/browser-callback.
7. Click Register.
8. On the left menu, click API Permissions.
9. In the horizontal menu, click Add a permission, select Microsoft Graph, and then select Delegated Permissions.
10. Type ExternalItem.ReadWrite.All and check ExternalItem.ReadWrite.All.
11. Click Application permissions and type User., and check Application Permissions.
12. Expand the User options and check User.Read.All.
13. Click Add permissions.
14. In the horizontal menu, click Grant admin consent for, and click Yes.
15. In the left menu, click Overview. From here, you can get the Application (client) ID and Directory (tenant) ID. You will need these in step 4.
16. In the left menu, click Certificates &amp; secrets.
17. Click New client secret, enter a description, and click Add. Hover over the new client secret Value and copy it. You will need this in step 4.

The Azure AD application now has permissions to make requests on behalf of a user to call ExternalItem.ReadWrite.All and as an application for User.Read.All.

## Step 4 – Configure authentication

Set up the variables in Postman. This information is used to generate the access token.

1. Click the &quot;Microsoft Graph Connectors API&quot; tab and go to the &quot;Variables&quot; section.

![](./images/connectors-images/ .png)

1. In the Variables section, provide the required information using the information from step 3.

![](./images/connectors-images/ .png)

- Set the  **Current value**  of **client\_id** to the Application (client) ID value from step 3.15.
- Set the  **Current value** of **client\_secret** to the Client Secret value from step 3.17.
- Set the  **Current value**  of **tenant** to the Directory (tenant) ID value from step 3.15.
- Set the  **Current value**  of **username** to [admin@xxxxxxx.onmicrosoft.com](mailto:admin@xxxxxxx.onmicrosoft.com) (tenant admin username)
- Set the  **Current value**  of **password** to tenant admin password.
- Select  **Save** / **Update**.
## Step 7 - Get an auth token


Because this is the first time you are running a request as an application authentication flow, you need to get an access token. Get the app access token by making the following POST request. 

![](./images/connectors-images/ .png)

**Access token request with a shared secret** POST /{{tenant}}/oauth2/v2.0/token HTTP/1.1 //Line breaks for clarityHost: login.microsoftonline.comContent-Type: application/x-www-form-urlencoded
client\_id={{client\_id}}&amp;scope=https%3A%2F%2Fgraph.microsoft.com%2F.default&amp;client\_secret={{client\_secret}}&amp;grant\_type=client\_credentials
**Successful response example** {    &quot;token\_type&quot;: &quot;Bearer&quot;,    &quot;expires\_in&quot;: 3599,    &quot;ext\_expires\_in&quot;: 3599,    &quot;access\_token&quot;: &quot;eyJ0eXAiOiJKV1QiLCJu… &quot;}

Note that we are using the [client credential flow](https://docs.microsoft.com/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow) here. Be sure to get app access token and not get user access token.


## Step 8 – Create a new connection

A [connection](https://docs.microsoft.com/graph/search-index-manage-connections) is a logical container for your external data that you can manage as a single unit. Choose a connection name, id, and description.Get the necessary details from the admin to connect to the data source and provide a mechanism to authorize against the content source when setting up the connection. You can use [the Microsoft Graph SDK](https://docs.microsoft.com/graph/sdks/sdks-overview) and APIs to program your connector setup. If you want to store credentials, you can use Azure Key Vault.

POST /external/connections

**Request** POST https://graph.microsoft.com/beta/external/connectionsContent-type: application/json
{&quot;id&quot;: &quot;contosotasks&quot;,&quot;name&quot;: &quot;Contoso Tasks&quot;,&quot;description&quot;: &quot;Connection to index Contoso task management system&quot;}
**Response** HTTP/1.1 201 CreatedContent-type: application/json
{    &quot;@odata.context&quot;: &quot;https://graph.microsoft.com/beta/$metadata#connections/$entity&quot;,    &quot;id&quot;: &quot;contosotasks&quot;,    &quot;name&quot;: &quot;Contoso Tasks&quot;,    &quot;description&quot;: &quot;Connection to index Contoso task management system&quot;,    &quot;state&quot;:  **null** ,    &quot;configuration&quot;: {        &quot;authorizedApps&quot;: [            &quot;a47b35b7-6271-4e6d-9e27-2450a8b9c6b6&quot;        ]    }}
 ![](RackMultipart20210304-4-yn4o4x_html_dbe310ad8b0496df.png)


## Step 9 - Register connection schema


The [connection schema](https://docs.microsoft.com/graph/api/externalconnection-post-schema?view=graph-rest-beta&amp;tabs=http) determines how your content will be used in various Microsoft Graph experiences. Schema is a flat list of all the properties that you plan to add to the connection along with their attributes, labels, and aliases. You must register the schema before adding items into the connection.POST /external/connections/{id}/schema
**Request** POST https://graph.microsoft.com/beta/external/connections/contosotasks/schemaContent-type: application/jsonPrefer: respond-async
{&quot;baseType&quot;: &quot;microsoft.graph.externalItem&quot;,&quot;properties&quot;: [{&quot;name&quot;: &quot;title&quot;,&quot;type&quot;: &quot;String&quot;,&quot;isSearchable&quot;: &quot;true&quot;,&quot;isQueryable&quot;: &quot;true&quot;,&quot;isRetrievable&quot;: &quot;true&quot;,&quot;labels&quot;: [&quot;title&quot;]},{&quot;aliases&quot;: &quot;creator&quot;,&quot;name&quot;: &quot;createdBy&quot;,&quot;type&quot;: &quot;String&quot;,&quot;isSearchable&quot;: &quot;true&quot;,&quot;isQueryable&quot;: &quot;true&quot;,&quot;isRetrievable&quot;: &quot;false&quot;,&quot;isRefinable&quot;: &quot;false&quot;,&quot;labels&quot;: [&quot;createdBy&quot;]},{&quot;aliases&quot;: &quot;editedDate&quot;,&quot;name&quot;: &quot;lastEditedDate&quot;,&quot;type&quot;: &quot;DateTime&quot;,&quot;isSearchable&quot;: &quot;false&quot;,&quot;isQueryable&quot;: &quot;true&quot;,&quot;isRetrievable&quot;: &quot;true&quot;,&quot;isRefinable&quot;: &quot;true&quot;,&quot;labels&quot;: [&quot;lastModifiedDateTime&quot;]}]}
**Response**
HTTP/1.1 202 AcceptedLocation: [https://graph.microsoft.com/beta/external/connections/contosotasks/operations/616bfeed-666f-4ce0-8cd9-058939010bfc](https://graph.microsoft.com/beta/external/connections/contosotasks/operations/616bfeed-666f-4ce0-8cd9-058939010bfc)

**Note:** Registering connection schema is an asynchronous operation, so do not ingest items into the connection until the connection schema is in the Completed state. To check connection schema status, execute the following request.GET /external/connections/contosotasks/operations/616bfeed-666f-4ce0-8cd9-058939010bfc

**Request** GET https://graph.microsoft.com/beta/external/connections/operations/616bfeed-666f-4ce0-8cd9-058939010bfc
**Response** HTTP/1.1 200 OKContent-type: application/json
{    @odata.context&quot;:&quot;https://graph.microsoft.com/beta/$metadata#external/connections(&#39;coursecatalog&#39;)/operations/$entity&quot;,    &quot;id&quot;: &quot;aa9186d2-893c-4361-ca51-431d88fa45d8&quot;,    &quot;name&quot;: &quot;Contoso Tasks&quot;,    &quot;status&quot;: &quot;inprogress&quot;,    &quot;error&quot;: null }

![](./images/connectors-images/ .png)
Once the connection schema operation status changes from I **nProgress** to **Completed,** you can ingest items for the connection.

 ![](./images/connectors-images/ .png)
 ![](./images/connectors-images/ .png)
Once the connection state changes from **draft** to **ready** , you can ingest items into current connection. 
![](./images/connectors-images/ .png)


## Step 10 - Add external group member (Optional)


This step is optional. If your external service uses non-Azure AD ACLs, sync those permissions. External groups (along with Azure Active Directory users and groups) are used to set permissions on externalItems added to a Microsoft Graph connection. Use externalGroups to represent non-Azure Active Directory groups or group-like constructs (such as Business units, Teams, and so on) that determine permission over the content in your external data source. See [external group](https://docs.microsoft.com/graph/api/externalgroup-post-members?view=graph-rest-beta&amp;tabs=http)s.
**Request** POST https://graph.microsoft.com/beta/external/connections/contosotasks/groups/31bea3d537902000/membersContent-Type: application/json
{&quot;@odata.type&quot;: &quot;#microsoft.graph.externalGroupMember&quot;,&quot;id&quot;: &quot;1431b9c38ee647f6a&quot;,&quot;type&quot;: &quot;group&quot;,&quot;identitySource&quot;: &quot;external&quot;} **Response** HTTP/1.1 201 CreatedContent-Type: application/json
{&quot;@odata.type&quot;: &quot;#microsoft.graph.externalGroupMember&quot;,&quot;id&quot;: &quot;14m1b9c38qe647f6a&quot;,&quot;type&quot;: &quot;group&quot;,&quot;identitySource&quot;: &quot;external&quot;}

![](./images/connectors-images/ .png)


## Step 11 - Ingest Items


Once you have created a connection, you can add your content. Each item from your data source must be represented as an [externalItem](https://docs.microsoft.com/graph/api/externalconnection-put-items?view=graph-rest-beta&amp;preserve-view=true&amp;tabs=http) in Microsoft Graph with a unique item id. This id is used to create, update or delete the item from Microsoft Graph. You can use the primary key from your data source as the itemId or derive it from one or more fields. An externalItem has three key components: access control list, properties, and content.If you have binary files, you must parse to get the metadata and a text version of the content. If you have non text content such as a pdf or bmp file, you must use object character recognition to convert content to text. You are responsible for converting your source permissions to grant or deny. Deny takes higher precedence over grant. **Request** PUT https://graph.microsoft.com/beta/connections/contosohr/items/TSP228082938Content-type: application/json
{&quot;@odata.type&quot;: &quot;microsoft.graph.externalItem&quot;,&quot;acl&quot;: [{&quot;type&quot;: &quot;user&quot;,&quot;value&quot;: &quot;e811976d-83df-4cbd-8b9b-5215b18aa874&quot;,&quot;accessType&quot;: &quot;grant&quot;,&quot;identitySource&quot;: &quot;azureActiveDirectory&quot;},{&quot;type&quot;: &quot;group&quot;,&quot;value&quot;: &quot;14m1b9c38qe647f6a&quot;,&quot;accessType&quot;: &quot;deny&quot;,&quot;identitySource&quot;: &quot;external&quot;}],&quot;properties&quot;: {&quot;ticketID&quot;: &quot;1158&quot;,&quot;priority&quot;: 1,&quot;title&quot;: &quot;Filter design&quot;,},&quot;content&quot;: {&quot;value&quot;: &quot;Build filtering capability by...&quot;,&quot;type&quot;: &quot;text&quot;}}

**Response** If successful, this method returns 200 OK response code.
##

## Error Handing


Resolve [Microsoft Graph authorization errors](https://docs.microsoft.com/graph/resolve-auth-errors).