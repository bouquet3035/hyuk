/**
 * 
 */
function checkImageType(fileName){

    console.log("filename");
    var pattern = /jpg|gif|png|jpeg/i;
    return fileName.match(pattern);
}

function getFileInfo(fullName){
	console.log("getFileInfo : 1");
    var fileName,imgsrc, getLink;

    
    var fileLink;

    if(checkImageType(fullName)){
        imgsrc = "/displayFile?fileName="+fullName;
        fileLink = fullName.substr(14);

        var front = fullName.substr(0,12); // /2015/07/01/
        var end = fullName.substr(14);

        getLink = "/displayFile?fileName="+front + end;

    }else{
        imgsrc ="/resources/img/file.png";
        fileLink = fullName.substr(12);
        getLink = "/displayFile?fileName="+fullName;
    }
    ileName = fileLink.substr(fileLink.indexOf("_")+1);
    return  {fileName:fileName, imgsrc:imgsrc, getLink:getLink, fullName:fullName};
}