Let us first understand what a Blob is. The word ‘Blob’ expands to Binary Large OBject. Blobs include images, text files, videos and audios. There are three types of blobs in the service offered by Windows Azure namely block, append and page blobs.
<ul>
<li>Block blobs are collection of individual blocks with unique block ID. The block blobs allow the users to upload large amount of data.
</li>
<li>Append blobs are optimized blocks that helps in making the operations efficient.
</li>
<li>Page blobs are compilation of pages. They allow random read and write operations. While creating a blob, if the type is not specified they are set to block type by default.
</li></ul>
All the blobs must be inside a container in your storage. Here is how to create a container in Azure storage.
