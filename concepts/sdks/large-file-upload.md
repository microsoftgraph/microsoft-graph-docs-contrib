---
title: "Large file upload"
description: "Provides guidance for uploading large files."
localization_priority: Normal
author: DarrelMiller
---

# Large File Upload Task

There are a number of entities in Microsoft Graph that support [resumable file uploads](https://docs.microsoft.com/en-us/graph/api/driveitem-createuploadsession?view=graph-rest-1.0) to make it easier to upload large files.  Instead of trying to upload the entire file in a single request, the file is sliced into smaller pieces and a request is used to upload a single slice.  In order to simplify this process, the SDKs implement a Large File Upload Task that co-ordinates the uploading of the slices.

# [C#](#tab/CS)

```csharp
string uri = $"https://graph.microsoft.com/v1.0/drive/items/{itemId}:/SWEBOKv3.pdf:/microsoft.graph.createUploadSession";

HttpRequestMessage httpRequestMessage = new HttpRequestMessage(HttpMethod.Post, uri);
await graphClient.AuthenticationProvider.AuthenticateRequestAsync(httpRequestMessage);

// Read the session info from the response
var httpResponseMessage = await graphClient.HttpProvider.SendAsync(httpRequestMessage);
var content = await httpResponseMessage.Content.ReadAsStringAsync();
var uploadSession = graphClient.HttpProvider.Serializer.DeserializeObject<UploadSession>(content);

UploadResult<DriveItem> uploadResult = null;
try
{
    uploadResult = await largeFileUploadTask.UploadAsync(progress);
                    
    if (uploadResult.UploadSucceeded)
    {
        Console.WriteLine($"File Uploaded {uploadResult.ItemResponse.Id}");//Sucessful Upload
    }
}
catch (ServiceException e)
{
    Console.WriteLine(e.Message);
}
```

# [TypeScript](#tab/TypeScript)

```typescript

async function fileUpload(elem) {
	let file = elem.files[0];
	try {
		let response = await largeFileUpload(client, file, file.name);
		console.log(response);
		console.log("File Uploaded Successfully.!!");
	} catch (error) {
		console.error(error);
	}
}

async function largeFileUpload(client, file) {
	try {
		let options = {
			path: "/Documents",
			fileName: file.name,
			rangeSize: 1024 * 1024,
		};
		const uploadTask = await MicrosoftGraph.OneDriveLargeFileUploadTask.create(client, file, options);
		const response = await uploadTask.upload();
		return response;
	} catch (err) {
		throw err;
	}
}
```

---

## Resuming a file upload

With a URL to the session, you can resume a previously paused file upload.

# [C#](#tab/CS)

```csharp

```

# [TypeScript](#tab/TypeScript)

```typescript
let options = {
        path: "/Documents",
        fileName: file.name,
        rangeSize: 1024 * 1024,
    };
    const uploadTask = await MicrosoftGraph.OneDriveLargeFileUploadTask.create(client, file, options);
    
    uploadTask.resume();
```

---