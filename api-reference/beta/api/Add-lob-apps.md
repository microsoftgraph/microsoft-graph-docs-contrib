# Microsoft Teams API - Tenant Application Management
A Global Administrator will use cmdlets to create/update/remove tenant apps for the Teams tenant app catalog. Each cmdlet will talk to an MSGraph endpoint which will proxy the calls to MiddleTier. The MSGraph endpoints will be responsible for authentication and passing along the tokens to MiddleTier along with the user supplied app payload.

#### Description
Publish an app to the organization's catalog(aka Tenant app catalog).

#### Permissions
One of the following permissions is required to call this API. Only Global Administrators can call this API. To learn more, including how to choose permissions, see [Permissions](https://developer.microsoft.com/en-us/graph/docs/concepts/permissions_reference).

| Permission Type                        | Permissions (from least to most privileged)
| ----------------------------------     | -------------
| Delegated (work or school account)     | AppCatalog.ReadWrite.All (Only Global Administrators)
| Delegated (personal Microsoft account) | Not supported
| Application                            | Not supported

#### Request headers
| Header        | Value           | Required
| --------------| --------------  | --------
| Authorization | Bearer {token}  | ✓
| Content-Type  | application/zip |

#### Request Body
- Teams Zip Manifest Payload: Teams application zip file [see below](#json-representation)

#### Response
```
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
  "developerProvidedId": "b5561ec9-8cab-4aa3-8aa2-d8d7172e4311",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "Tenant"
}
```
The response is a [TeamsCatalogApp](#teamscatalogapp).

#### Example
##### Request
```
POST https://graph.microsoft.com/beta/appCatalogs/teamsApps
Content-type: application/zip
Content-length: 244

[Zip file containing a Teams app package]
```
For Teams application zip file [see below](#json-representation)

##### Response
```
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
  "developerProvidedId": "b5561ec9-8cab-4aa3-8aa2-d8d7172e4311",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "Tenant"
}
```
The response is a [TeamsCatalogApp](#teamscatalogapp).

#### Usage Tips
Information for creating a Teams app manifest package can be found [here](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/apps/apps-package).

#### Error Codes & Messages
| Operation | Status Code | Error Code           | Error Message
| --------- | ----------- | -------------------- | --------------
| `POST`    | 400         | invalidRequest       | Unable to parse request and/or app package
| `POST`    | 401         | unauthenticated      | Unable to authenticate user
| `POST`    | 403         | accessDenied         | User does not have access to the tenant
| `POST`    | 404         | itemNotFound         | No app found with Id
| `POST`    | 415         | unsupportedMediaType | Invalid app package type

#### Known Limitations
One cannot create a tenant app with the same manifest ID as an already existing tenant app.

#### Future Extension
None.

