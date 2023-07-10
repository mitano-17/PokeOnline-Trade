function check(headers) {
    return (buffers,options={
        offset: 0
    })=>headers.every((header,index)=>header === buffers[options.offset + index]);
}

function readBuffer(file, start=0, end=2) {
    return new Promise((resolve,reject)=>{
        const reader = new FileReader();
        reader.onload = ()=>{
            resolve(reader.result);
        }
        ;
        reader.onerror = reject;
        reader.readAsArrayBuffer(file.slice(start, end));
    }
    );
}

const isPNG = check([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]);
const isJPEG = check([0xff, 0xd8, 0xff]);
const realFileElement = document.querySelector("#realFileType");

async function handleChange(event) {
    const file = event.target.files[0];
    const buffers = await readBuffer(file, 0, 8);
    const uint8Array = new Uint8Array(buffers);
    realFileElement.innerText = `The type of ${file.name} is ${isPNG(uint8Array) ? "image/png" : isJPEG(uint8Array) ? "image/jpeg" : file.type}`;
}