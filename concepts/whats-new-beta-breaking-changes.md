<!---Document in progress, all approvals are pending, including it's placement in the TOC -->
**Graph Connectors /beta environment changes**

1. Renaming `authorizedApps` property to `authorizedAppIds`

    When creating an `externalConnection`, `authorizedApps` is an optional property as shown below:
    ```
    POST https://graph.microsoft.com/beta/external/connections
    {
        "id": "ContosoConnectionId",
        "name": "Contoso HR",
        "description": "Connection to index Contoso HR system",
        "configuration": {
            // Deprecated property name
            "authorizedApps": [
                "2ec872fd-6635-4b7b-8291-1bf30b79994c"
            ]
        }
    }
    ```

    The `authorizedApps` property will be renamed and fully removed by **August 2021**. Until that point, both `authorizedApps` and `authorizedAppIds` will be returned by the Graph Connectors Graph APIs as shown below:

    ```
    POST https://graph.microsoft.com/beta/external/connections
    {
        "id": "ContosoConnectionId",
        "name": "Contoso HR",
        "description": "Connection to index Contoso HR system",
        "configuration": {
            // Deprecated property name
            "authorizedApps": [
                "2ec872fd-6635-4b7b-8291-1bf30b79994c"
            ],
            // New property name
            "authorizedAppIds": [
                "2ec872fd-6635-4b7b-8291-1bf30b79994c"
            ]
        }
    }
    ```

    To help ease the transition, our APIs will support connection creation with either of these properties until the full removal date of August 2021. Do not create request payloads with both properties.

2. OData type annotations no longer necessary

    OData type annotations for `externalItem` are being deprecated by **August 2021**. Developers should strip the @odata.type annotations from their request payloads and nested properties before the deprecation date. 

    The old request payload:

    ```
    PUT https://graph.microsoft.com/beta/connections/contosohr/items/TSP228082938
    {
        // Deprecated annotation
        "@odata.type": "microsoft.graph.externalItem",
        "acl": [
            {
            "@odata.type": "microsoft.graph.acl",
            "type": "user",
            "value": "e811976d-83df-4cbd-8b9b-5215b18aa874",
            "accessType": "grant",
            "identitySource": "azureActiveDirectory"
            }
        ],
        "properties": {
            "title": "Error in the payment gateway",
            "priority": 1,
            "assignee": "john@contoso.com"
        },
        "content": {
            "value": "Error in payment gateway...",
            "type": "text"
        }
    }
    ```

    The new request payload:    
    ```
    PUT https://graph.microsoft.com/beta/connections/contosohr/items/TSP228082938
    {
        // Removal of annotation
        "acl": [
            {
            // Removal of annotation
            "type": "user",
            "value": "e811976d-83df-4cbd-8b9b-5215b18aa874",
            "accessType": "grant",
            "identitySource": "azureActiveDirectory"
            }
        ],
        "properties": {
            "title": "Error in the payment gateway",
            "priority": 1,
            "assignee": "john@contoso.com"
        },
        "content": {
            "value": "Error in payment gateway...",
            "type": "text"
        }
    }
    ```
    
    *If developers are sending @odata.type annotations and for some reason must continue doing so, they should change the namespace from `microsoft.graph.externalItem` to `microsoft.graph.externalConnectors.externalItem`.*

3. Permissions model breaking changes

   Moving forward, the application permission `ExternalItem.ReadWrite.All` will still be in use, but it will be narrowed in scope. This permission will only authorize the API user to upsert and delete items, and will no longer authorize the API user to manage connections and connection settings.

    Permission|Description
    -|-
    ExternalConnection.ReadWrite.OwnedBy|Can create and manage connections as well as connection settings for any connection the application is authorized to
    ExternalItem.ReadWrite.OwnedBy|Can read/write external items for any connections the application is authorized to
    ExternalItem.ReadWrite.All|Can read/write external items for any connections
    |