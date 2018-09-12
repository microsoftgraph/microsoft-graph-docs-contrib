Remove an app from your organization's app catalog (aka. tenant app catalog) with the given ID.

#### Permissions
One of the following permissions is required to call this API. Only Global Administrators can call this API. To learn more, including how to choose permissions, see [Permissions](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference).

| Permission Type                        | Permissions (from least to most privileged)
| ---------------                        | ----------------------------
| Delegated (work or school account)     | AppCatalog.ReadWrite.All (Only Global Administrators)
| Delegated (personal Microsoft account) | Not supported
| Application                            | Not supported

#### Request headers
| Header        | Value          | Required
| ---------     | -------------- | --------
| Authorization | Bearer {token} | ✓

#### Request Body
- None.

#### Response
```
HTTP/1.1 204 No Content
```

#### Example
##### Request
```
DELETE https://graph.microsoft.com/beta/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8
```
##### Response
```
HTTP/1.1 204 No Content
```
#### Usage Tips
The ID to include in this call is the ID returned by making the [List apps in the organization catalog (POST) call](./list_lob_apps.md). This ID is not the ID in the manifest of the zip app package.
