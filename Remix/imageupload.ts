// import { ActionFunction, ActionFunctionArgs, json } from "@remix-run/node";
// import { useSubmit } from "@remix-run/react";
// import { connectDB } from "~/lib/mongodb";
// import Image from "~/models/image";

// export const action: ActionFunction = async ({
//   request,
// }: ActionFunctionArgs) => {
//   const formdata = await request.formData();
//   console.log("data of form ", formdata);

//   await connectDB();
//   const image = new Image({ url: formdata.get("url") });
//   await image.save();
//   return json({ success: true, message: "File processed" });
// };

// export default function TestinTest() {
//   const submit = useSubmit();
//   const base64Image = async (file: any) => {
//     return new Promise((resolve, reject) => {
//       const reader = new FileReader();
//       reader.onload = () => resolve(reader.result);
//       reader.onerror = (err) => reject(err);
//       reader.readAsDataURL(file);
//     });
//   };

//   const handleImageChange = async (e: any) => {
//     const file = e.target.files?.[0];
//     if (!file) {
//       console.log("file not found");
//       return;
//     }
//     const imageUrl: any = await base64Image(file);
//     const formdata = new FormData();
//     if (!imageUrl) return;
//     formdata.append("url", imageUrl);
//     console.log(imageUrl);
//     submit(formdata, {
//       method: "POST",
//     });
//   };

//   return (
//     <div>
//       <input type="file" accept="image/*" onChange={handleImageChange} />
//     </div>
//   );
// }
