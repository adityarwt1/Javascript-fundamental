///  let's base 64 

const filebase64 = async (file) => {
    return new Promise((resolve, reject) => {

        const reader = new FileReader;

        reader.onload = () => resolve(reader.result)
        reader.onerror = (error) => reject(error) // 

        reader.readAsDataURL(file)
    })
}


const file = async (e) => {
    const file = e.target.files?.[0]

    if (file) {
        const base64Format = await fileToBase64(file)

    }
}
/// i forgot the process 