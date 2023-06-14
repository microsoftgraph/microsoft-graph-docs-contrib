---
title: "Upload large files using the Microsoft Graph SDKs"
description: "Provides guidance for uploading large files using the Microsoft Graph SDKs."
ms.localizationpriority: medium
author: DarrelMiller
---

<!-- markdownlint-disable MD024 MD051 -->

# Upload large files using the Microsoft Graph SDKs

A number of entities in Microsoft Graph support [resumable file uploads](/graph/api/driveitem-createuploadsession?view=graph-rest-1.0&preserve-view=true) to make it easier to upload large files. Instead of trying to upload the entire file in a single request, the file is sliced into smaller pieces and a request is used to upload a single slice. In order to simplify this process, the Microsoft Graph SDKs implement a large file upload task that manages the uploading of the slices.

## Upload large file to OneDrive

## [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/LargeFileUpload.cs" id="LargeFileUploadSnippet":::

## [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/largeFileUpload.ts" id="LargeFileUploadSnippet":::

## [Java](#tab/java)

```java
// Get an input stream for the file
File file = new File(localFilePath);
InputStream fileStream = new FileInputStream(file);
long streamSize = file.length();

// Create a callback used by the upload provider
IProgressCallback callback = new IProgressCallback() {
    @Override
    // Called after each slice of the file is uploaded
    public void progress(final long current, final long max) {
        System.out.println(
            String.format("Uploaded %d bytes of %d total bytes", current, max)
        );
    }
};

DriveItemCreateUploadSessionParameterSet uploadParams =
    DriveItemCreateUploadSessionParameterSet.newBuilder()
        .withItem(new DriveItemUploadableProperties()).build();

// Create an upload session
UploadSession uploadSession = graphClient
    .me()
    .drive()
    .root()
    // itemPath like "/Folder/file.txt"
    // does not need to be a path to an existing item
    .itemWithPath(itemPath)
    .createUploadSession(uploadParams)
    .buildRequest()
    .post();

LargeFileUploadTask<DriveItem> largeFileUploadTask =
    new LargeFileUploadTask<DriveItem>
        (uploadSession, graphClient, fileStream, streamSize, DriveItem.class);

// Do the upload
largeFileUploadTask.upload(0, null, callback);
```

---

## Resuming a file upload

The Microsoft Graph SDKs support [resuming in-progress uploads](/graph/api/driveitem-createuploadsession?view=graph-rest-1.0&preserve-view=true#resuming-an-in-progress-upload). If your application encounters a connection interruption or a 5.x.x HTTP status during upload, you can resume the upload.

### [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/LargeFileUpload.cs" id="ResumeSnippet":::

### [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/largeFileUpload.ts" id="ResumeSnippet":::

### [Java](#tab/java)

> [!NOTE]
> The Java SDK does not currently support resuming in-progress downloads.

---

## Upload large attachment to Outlook message

### [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/LargeFileUpload.cs" id="UploadAttachmentSnippet":::

### [TypeScript](#tab/typescript)

:::code language="typescript" source="./snippets/typescript/src/snippets/largeFileUpload.ts" id="UploadAttachmentSnippet":::

### [Java](#tab/java)

```java
final String[] scopes = { "Mail.ReadWrite" };
ensureGraphClient(scopes);

final String localFilePath = "largefile.gif";

final Message draftMessage = new Message();
draftMessage.subject = "Large attachment";

final Message savedDraft = graphClient
    .me()
    .messages()
    .buildRequest()
    .post(draftMessage);

File file = new File(localFilePath);
// Get an input stream for the file
InputStream fileStream = new FileInputStream(file);

final AttachmentItem largeAttachment = new AttachmentItem();
largeAttachment.attachmentType = AttachmentType.FILE;
largeAttachment.name = "largefile.gif";
largeAttachment.size = file.length();

final AttachmentCreateUploadSessionParameterSet upParams =
    AttachmentCreateUploadSessionParameterSet.newBuilder()
    .withAttachmentItem(largeAttachment)
    .build();

final UploadSession uploadSession = graphClient
    .me()
    .messages(savedDraft.id)
    .attachments()
    .createUploadSession(upParams)
    .buildRequest()
    .post();

// Create a callback used by the upload provider
IProgressCallback callback = new IProgressCallback() {
    @Override
    // Called after each slice of the file is uploaded
    public void progress(final long current, final long max) {
        System.out.println(
            String.format("Uploaded %d bytes of %d total bytes", current, max)
        );
    }
};

LargeFileUploadTask<FileAttachment> uploadTask =
    new LargeFileUploadTask<FileAttachment>
        (uploadSession, graphClient, fileStream, file.length(), FileAttachment.class);

// Do the upload
uploadTask.upload(0, null, callback);
```

---

<!-- markdownlint-enable MD024 -->
