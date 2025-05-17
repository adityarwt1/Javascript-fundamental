function fileToBase64(file) {
    return new Promise((resolve, reject) => {
        const reader = new FileReader();

        reader.onload = function () {
            resolve(reader.result);
        };

        reader.onerror = function (error) {
            reject(error);       
        };

        reader.readAsDataURL(file);
    });
}


const ownEffort = (file) => {
    /// fucntion return promise so we use resolve and reject as well 
    return new Promise((resolve, reject) => {
        const reader = new FileReader()

        //// thhis function return changes in the file  
        reader.onload = function () {
            resolve(reader.result)
        }

        /// this function also return the error when porforming the functon error int promise
        reader.onerror = function (error) {
            reject(this.error)
        }

        /// this step contai  the file fonmat converted into the base64 
        reader.readAsDataURL(file)
    })
}