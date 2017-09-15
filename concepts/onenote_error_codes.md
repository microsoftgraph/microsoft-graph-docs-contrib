ms.TocTitle: Error and warning codes
Title: OneNote API error and warning codes
Description: Find explanations for error and warning codes returned by the OneNote API.
ms.ContentId: 27d541f5-b4b0-4ca6-9ad4-be3a62baa32e
<<<<<<< HEAD
ms.topic: article (how-tos)
=======
>>>>>>> staging
ms.date: July 5, 2016

[!INCLUDE [Add the O365API repo styles](../includes/controls/addo365apistyles.xml)]
[!INCLUDE [Add the ONAPI repo styles](../includes/controls/addonapistyles.xml)]


# OneNote API error and warning codes 

*__Applies to:__ Consumer notebooks on OneDrive | Enterprise notebooks on Office 365*

This article describes error and warning codes that are returned by the OneNote API whenever a request sent through the API fails.

<p id="top-padding">**In this article**</p>
<p id="indent">[Error and warning responses](#responses)</p>
<p id="indent">[Codes 10001 to 19999](#C10001-19999) - Service problems or service information</p>
<p id="indent">[Codes 20001 to 29999](#C20001-29999) - Developer or application-based errors</p>
<p id="indent">[Codes 30001 to 39999](#C30001-39999) - User-based errors</p>
<p id="indent">[Codes 40001 to 49999](#C40001-49999) - Authentication and authorization failures</p>
<p id="indent">[X-CorrelationId header](#x-correlationid)</p>


<a name="responses"></a>
## Error and warning responses
When your request generates an error, the OneNote API stops performing the request and returns an error response as a JSON object. An error response contains the associated error code, a message, and a link to the appropriate section of this article. The following example shows how an error response looks.

```json
{
   "error":{
      "code":"10002",
      "message":"The service is currently unavailable. Please try again later.",
      "@api.url":"http://go.microsoft.com/fwlink/?LinkID=400805"
   }
}
```
 
When your request generates a warning, the OneNote API performs the request and includes the warning in its response. A response can contain more than one warning, so the API returns warnings as an array of JSON objects. Each warning contains a message and a link to the appropriate section of this article. The following example shows how a warning response looks in the context of a completed request.

```
{
   "@odata.context":"https://www.onenote.com/api/v1.0/$metadata#me/notes/notebooks",
   "api.diagnostics@odata.type":"#Collection(Microsoft.OneNote.Api.Diagnostic)",
   "@api.diagnostics":[
      {
         "message":"Created date/time string 5/5/2014 in 'Presentation' part html did not match any of the allowed formats",
         "url":"http://go.microsoft.com/fwlink/?LinkID=400816"
      }
   ],
   "value":[
      {
         "isDefault":false,
         "createdBy":null,
         "modifiedTime":"0001-01-01T00:00:00Z",
         "userRole":"Owner",
         "id":"55C9F7CBFC6AC1!76345",
         "name":"Notebook1",
         "link":null
      },
      {
         "isDefault":true,
         "createdBy":null,
         "modifiedTime":"0001-01-01T00:00:00Z",
         "userRole":"Owner",
         "id":"55C9F7CBFC6AC1!76428",
         "name":"Notebook2",
         "link":null
      },
      {
         "isDefault":false,
         "createdBy":null,
         "modifiedTime":"0001-01-01T00:00:00Z",
         "userRole":"Owner",
         "id":"55C9F7CBFC6AC1!77509",
         "name":"Notebook3",
         "link":null
      }
   ]
}
```

A request can also generate both an error and one or more warnings. In that case the OneNote API stops performing the request and returns both the error and the warnings. The following example shows how an error that contains a warning looks.

```
{
   "error":{
      "code":"10002",
      "message":"The service is currently unavailable. Please try again later.",
      "@api.url":"http://go.microsoft.com/fwlink/?LinkID=400805",
      "api.diagnostics@odata.type":"#Collection(Microsoft.OneNote.Api.Diagnostic)",
      "@api.diagnostics":[
         {
            "message":"Created date/time string 5/5/2014 in 'Presentation' part html did not match any of the allowed formats",
            "url":"http://go.microsoft.com/fwlink/?LinkID=400816"
         }
      ]
   }
}
```

If you need to work with Microsoft support to resolve any issues, be sure to also log the [X-CorrelationId header](#x-correlationid) and timestamp of the API call.

<a name="C10001-19999"></a>
## Codes from 10001 to 19999
The service is having problems or is sending information to the application.

<a name="C10001"></a>
### 10001
An unexpected error occurred and the request failed.

<a name="C10002"></a>
### 10002
The service is not currently available.

<a name="C10003"></a>
### 10003
The current user's account has exceeded the maximum number of active requests. Your app will have to repeat the request.

<a name="C10004"></a>
### 10004
The service can't create a page in the requested section because that section is protected by a password.

<a name="C10005"></a>
### 10005
The request contains more than the maximum number of image tags in which the **data-render-src** attribute contains a PDF. See [Add images and files](../howto/onenote-images-files.md).

<a name="C10006"></a>
### 10006
The OneNote API was unable to create a page in the specified section because that section is corrupt.

<a name="C10007"></a>
### 10007
The server is too busy to handle the incoming request at this moment. Please try again later.

<a name="C10008"></a>
### 10008
One or more of the document libraries on the user or group's OneDrive contains more than 5000 OneNote items (notebooks, sections, section groups), and cannot be queried using the API. Please make sure that none of the user or group's document libraries contains more than 5000 OneNote items. See the [OneNote Dev blog](https://blogs.msdn.microsoft.com/onenotedev/2016/09/11/onenote-api-calls-fail-with-a-large-number-of-items-in-a-sharepoint-document-library/) for mitigation steps.

<a name="C10012"></a>
### 10012
Unable to create or update the entity because the library that contains the notebook requires items to be checked out before they can be edited. For more information, see https://support.office.com/en-us/article/Configure-a-site-library-to-require-check-out-of-files-f63fcbdc-1db6-4eb7-a3eb-dd815500c9e7.

Either remove the check-out requirement from the library, or move the notebook.

<a name="C10013"></a>
### 10013
One or more of the document libraries on the user or group's OneDrive contains more than 20,000 items and cannot be indexed for querying using the API. Please make sure that none of the user or group's document libraries contains more than 20,000 items. See the [OneNote Dev blog](https://blogs.msdn.microsoft.com/onenotedev/2016/09/11/onenote-api-calls-fail-with-a-large-number-of-items-in-a-sharepoint-document-library/) for mitigation steps.

<a name="C10012"></a>
### 10012
Unable to create or update the entity because the library that contains the notebook requires items to be checked out before they can be edited. For more information, see https://support.office.com/en-us/article/Configure-a-site-library-to-require-check-out-of-files-f63fcbdc-1db6-4eb7-a3eb-dd815500c9e7.

Either remove the check-out requirement from the library, or move the notebook.

<a name="C19999"></a>
### 19999
The request failed because an undetermined error occurred.


<a name="C20001-29999"></a>
## Codes from 20001 to 29999
The application code has done something wrong.

<a name="C20001"></a>
### 20001
The request is missing the required "Presentation" part. Exactly one is required. See [OneNote API reference][ref].

<a name="C20002"></a>
### 20002
The request contains two or more "Presentation" parts. Exactly one is required. See [OneNote API reference][ref].

<a name="C20003"></a>
### 20003
The content type of the "Presentation" part can be only text/html or application/xhtml+xml. See [OneNote API reference][ref].

<a name="C20004"></a>
### 20004
The "Presentation" part HTML contains an image tag with both the **src** and the **data-render-src** properties set. The API will ignore the **src** property and use the **data-render-src** property. See [OneNote API reference][ref].

<a name="C20005"></a>
### 20005
The request URI is too long. The maximum size of the URI (including all parameters and data) is 16 KB or 16,384 characters.

<a name="C20006"></a>
### 20006
The "Presentation" part HTML contains an image tag with neither the src nor the **data-render-src** properties set. The API will ignore the **image** tag. See [OneNote API reference][ref].

<a name="C20007"></a>
### 20007
The "Presentation" part HTML contains a created date/time string that does not match any of the allowed formats. See [OneNote API reference][ref].

<a name="C20008"></a>
### 20008
The size of the request is too large. See [OneNote API reference][ref].

<a name="C20009"></a>
### 20009
The request contains parts with duplicate names. Part names must be unique. See [OneNote API reference][ref] for more information on how to construct multipart requests.

<a name="C20010"></a>
### 20010
The Content-Disposition header was not supplied for the specified content type. See [OneNote API reference][ref] for more information on how to construct multipart requests.

<a name="C20011"></a>
### 20011
The request contains a malformed multipart payload. Problems could include missing blank lines, a missing last line, incorrectly formatted part separators, and so on. If you're building the multipart message by hand, carefully check the logic, or consider using a third-party library. See [OneNote API reference][ref] for more information on how to construct a multipart payload.

<a name="C20012"></a>
### 20012
The request doesn't supply a content type for the specified part. See [OneNote API reference][ref] for more information on how to construct a part.

<a name="C20013"></a>
### 20013
The request doesn't supply Content-Type and Content-Disposition headers for the specified part. 

<a name="C20014"></a>
### 20014
The length of a part in the multipart message exceeds the maximum size of 25 MB. See [OneNote API reference][ref].

<a name="C20015"></a>
### 20015
The count of parts in the multipart message exceeds the limit of 500. See [OneNote API reference][ref].

<a name="C20016"></a>
### 20016
The length of the multipart message exceeds the limit of 75 MB. See [OneNote API reference][ref].

<a name="C20100"></a>
### 20100
Something is wrong with the syntax of your request. See [OneNote API reference][ref] for more information, and check to make sure that you have constructed your request correctly.

<a name="C20101"></a>
### 20101
The property that you requested doesn't exist.

<a name="C20102"></a>
### 20102
You requested a resource that doesn't exist.

<a name="C20103"></a>
### 20103
The **expand** query is not supported for this request. See [Supported OData query string options](../howto/onenote-get-content.md#query-options).

<a name="C20104"></a>
### 20104
The **pagelevel** query option is supported only when querying for the pages collection in a section or for a specific page. For example:  

    GET ../sections/{id}/pages?pagelevel=true

    GET ../pages/{id}?pagelevel=true

<a name="C20106"></a>
### 20106
Your request contains a query operator that is not supported. See [OneNote API reference][ref].

<a name="C20108"></a>
### 20108
Your request contains unsupported OData query parameters.

<a name="C20109"></a>
### 20109
The payload in the PATCH request is not constructed correctly.

<a name="C20110"></a>
### 20110
Page create requests with data parts require the content to be multipart, with a "Presentation" part. See [OneNote API reference][ref].

<a name="C20111"></a>
### 20111
Your request uses an OData feature that isn't supported.

<a name="C20112"></a>
### 20112
Your request contains an invalid ID for the target notebook, section group, section, or page entity.

<a name="C20113"></a>
### 20113
The resource specified in the request has been deleted.

<a name="C20115"></a>
### 20115
The name contains invalid characters. A notebook name cannot contain any of the following characters: `? * \ / : < > | ' "`

<a name="C20117"></a>
### 20117
An item with the name you specified already exists in the location that you specified.

<a name="C20119"></a>
### 20119
The HTML in the "Presentation" part contains a **data-attachment** attribute that either doesn't have a valid format or includes one or more of these invalid characters for a file name: `\ / : * ? < > | "`. The request substituted the value indicated in the error message.

<a name="C20120"></a>
### 20120
Your request specifies a PATCH target that can't be located.

<a name="C20121"></a>
### 20121
Your request contains an invalid PATCH argument. See [Update page content](../howto/onenote-update-page.md).

<a name="C20122"></a>
### 20122
Your request specifies an unsupported PATCH action. See [Update page content](../howto/onenote-update-page.md).

<a name="C20123"></a>
### 20123
The PATCH request is unable to alter the specified page.

<a name="C20124"></a>
### 20124
Your multipart PATCH request doesn't include a "commands" part with the PATCH action JSON structure. See [Update page content](../howto/onenote-update-page.md).

<a name="C20125"></a>
### 20125
Your PATCH request contains no actions. See [Update page content](../howto/onenote-update-page.md).

<a name="C20126"></a>
### 20126
The message body contains either incorrectly formatted JSON or fields that are not supported for this operation.

<a name="C20127"></a>
### 20127
Your request specifies the name of an unknown property.

<a name="C20128"></a>
### 20128
Your request contains an OData syntax error at the position indicated in the message.

<a name="C20129"></a>
### 20129
Your request contains a **top** query string option whose value is too high. For page queries, the maximum value is 100, and the default value is 20.

<a name="C20130"></a>
### 20130
Your request contains a URI that points to an HTTP resource that can't be found.

<a name="C20131"></a>
### 20131
Your request contains an invalid value for Content-Type. Use the value indicated in the message. See [OneNote API reference][ref].

<a name="C20132"></a>
### 20132
Your request contains invalid content. Common causes for this are a missing Content-Type request header and/or no content in the body of the request. See [OneNote API reference][ref].

<a name="C20133"></a>
### 20133
Your request specifies a PATCH target that is not supported. See [Update page content](../howto/onenote-update-page.md).

<a name="C20134"></a>
### 20134
Your request specifies an invalid element as the target of the PATCH action. If the target uses the **data-id** identifier, make sure it's prefixed with a # symbol. See [Update page content](../howto/onenote-update-page.md).

<a name="C20135"></a>
### 20135
Your request specifies an entity type that is not supported for the PATCH operation. See [Update page content](../howto/onenote-update-page.md).

<a name="C20136"></a>
### 20136
Your request contains an invalid or missing **data-render-src** or **data-render-method** attribute. See [Extract data from captures](../howto/onenote-extract-data.md).

<a name="C20137"></a>
### 20137
The target page does not support PATCH requests.

<a name="C20138"></a>
### 20138
The target element type in your PATCH request doesn't support the **append** action. See [Update page content](../howto/onenote-update-page.md).

<a name="C20139"></a>
### 20139
Your request contains an invalid **data-tag** attribute value. See [Use note tags](../howto/onenote-note-tags.md).

<a name="C20140"></a>
### 20140
Your request contains an invalid **data-tag** status value. Check box note tags can have a **completed** status. Example:

    <p data-tag="to-do:completed">To-do note tag in completed state (checked box in the UI)</p>
 
See [Use note tags](../howto/onenote-note-tags.md).

<a name="C20141"></a>
### 20141
The target in your PATCH request doesn't support the specified action. See [Update page content](../howto/onenote-update-page.md).

<a name="C20142"></a>
### 20142
Your request contains an **expand** expression for a parent of child entities or a child of parent entities, which is not supported. See [Supported OData query string options](../howto/onenote-get-content.md##query-options).

<a name="C20143"></a>
### 20143
The OData query is invalid.

<a name="C20144"></a>
### 20144
Your request contains an **expand** expression for a non-navigation property. Only navigation properties can be expanded.

<a name="C20145"></a>
### 20145
The **select** or **expand** expression in your request contains an invalid term.

<a name="C20146"></a>
### 20146
The `style="position:absolute"` attribute is specified on an element, but the **body** element does not specify `data-absolute-enabled="true"`, which is required to support positioning. All position settings will be ignored. See [Create absolute positioned elements](../howto/onenote-abs-pos.md).

<a name="C20147"></a>
### 20147
The `style="position:absolute"` attribute is specified on an element that is not a direct child of the **body** element, which is not supported. If the element is a **div**, **img**, or **object**, make it a direct child of the body; otherwise the position settings will be ignored and its content will render inside an absolute positioned div. See [Create absolute positioned elements](../howto/onenote-abs-pos.md).

<a name="C20148"></a>
### 20148
The `style="position:absolute"` attribute is specified on an element type that does not support it. Only **div**, **img**, and **object** elements that are direct children of the page body support positioning. See [Create absolute positioned elements](../howto/onenote-abs-pos.md).

<a name="C20149"></a>
### 20149
Your request specifies a target element that cannot be found.

<a name="C20150"></a>
### 20150
The request is not valid for this authentication type. Use the `../me/notes/` path instead.

<a name="C20151"></a>
### 20151
The request is not valid for this authentication type. Use the `../me/notes/section/{id}/pages` endpoint to create a page in a specific section.

<a name="C20152"></a>
### 20152
There is no name value specified for the entity. The name must be defined, and it cannot contain whitespaces only.

<a name="C20153"></a>
### 20153
The entity name contains invalid characters. The name cannot contain the following characters: `? * \ / : < > | & # " % ~`

<a name="C20154"></a>
### 20154
The entity name cannot start with a space.

<a name="C20155"></a>
### 20155
The entity name is too long. Notebook names have a 128-character limit. Other entity names have a 50-character limit.

<a name="C20156"></a>
### 20156
The specified ID for the destination resource does not exist.

<a name="C20157"></a>
### 20157
The specified ID for the destination entity is invalid.

<a name="C20158"></a>
### 20158
Unable to get metadata for the site URL specified in the request. Check the format of the supplied URL. Supported formats include `https://domain.sharepoint.com/site-a` and `https://domain.com/sites/site-a`.

<a name="C20160"></a>
### 20160
Unable to find an Office 365 unified group that has the specified ID.

<a name="C20161"></a>
### 20161
The context does not specify a valid user ID. One common error is that PUID/CID was passed in as a long instead of a hex.

<a name="C20166"></a>
### 20166
The application has issued too many requests on behalf of a user in a short period of time. To help ensure that the OneNote API remains stable and responsive, the API returns a 429 status code and this error when it detects that an application is using too many resources. 
  For more information, see [OneNote API throttling and how to avoid it](http://blogs.msdn.com/b/onenotedev/archive/2016/01/13/onenote-api-throttling-and-best-practices.aspx).

<a name="C20168"></a>
### 20168
The video source specified in the request is not supported. See [Supported video sites](../howto/onenote-images-files.md#videos) for the current list.
<<<<<<< HEAD
=======

>>>>>>> staging

<a name="C30001-39999"></a>
## Codes from 30001 to 39999
Something is wrong with the user's account.

<a name="C30101"></a>
### 30101
The user account has exceeded its OneDrive quota. See [OneDrive](https://onedrive.live.com/about/en-us/).

<a name="C30102"></a>
### 30102
Nothing more can be added to the requested section because it has reached its maximum size.

<a name="C30103"></a>
### 30103
Resource consumption is too high for the request. Either the target user account has a large dataset, or the service is receiving a high number of concurrent requests to the same site (for example, the user's personal site or a team site).

<a name="C30104"></a>
### 30104
The user account has been suspended.

<a name="C30105"></a>
### 30105
The user's personal OneDrive for Business site is not provisioned, which is required to access notebooks. The OneNote service will provision the site now. This process may take several minutes.

<a name="C30106"></a>
### 30106
OneDrive for Business is being provisioned for the user.

<a name="C30107"></a>
### 30108
The user's personal OneDrive for Business could not be retrieved. Here are some possible causes.

| Cause | Resolution |
|:------|:------|
| The user's personal site has not been provisioned. | The user should open OneDrive for Business and follow any instructions to provision the site. If this fails, they should contact their Office 365 tenant administrator. |
| The user's personal site is currently being provisioned. | Try the request later. |
| The user does not have a valid OneDrive for Business license. | The user should contact their Office 365 tenant administrator. |
| A network issue prevented the request from being successfully sent. | Try the request later. |


<a name="C40001-49999"></a>
## Codes from 40001 to 49999
The user or application does not have the correct permissions.

<a name="C40001"></a>
### 40001
The request doesn't contain a valid OAuth token. See [OneNote authentication and permissions](../howto/onenote-auth.md).

<a name="C40002"></a>
### 40002
The user doesn't have permission to write to the requested location.

<a name="C40003"></a>
### 40003
The user doesn't have permission to access the requested resource.

<a name="C40004"></a>
### 40004
The OAuth token doesn't have the required scopes to perform the requested action. See [OneNote authentication and permissions](../howto/onenote-auth.md).

<a name="x-correlationid"></a>
## X-CorrelationId header
In addition to standard HTTP response codes, the OneNote API returns headers to the calling app. Included in every response is an **X-CorrelationId** header and a **Date** header, as shown in the following excerpt:

```
X-CorrelationId: d2d6aaf5-3bde-4ee7-ba18-27727bf3cffe
Date: Fri, 06 Mar 2015 15:10:46 GMT
```

The correlation ID is a GUID that ties together the various pieces in the backend servers. Correlation IDs are not sequential, which means you can't use them to establish an order of page creation.
 
Your app can log the correlation ID and date of your API calls. You can use these values if you need to work with Microsoft support to resolve problems in your app or with the API.


<a name="see-also"></a>
## Additional resources

- [OneNote development](../howto/onenote-landing.md)
- [OneNote Dev Center](http://dev.onenote.com/)
- [OneNote Developer Blog](http://go.microsoft.com/fwlink/?LinkID=390183)
- [OneNote development questions on Stack Overflow](http://go.microsoft.com/fwlink/?LinkID=390182) 
- [OneNote GitHub repos](http://go.microsoft.com/fwlink/?LinkID=390178)


[ref]: http://dev.onenote.com/docs