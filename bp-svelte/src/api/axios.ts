import axios from "axios";
import type { AxiosInstance } from "axios";

// TODO: Change the baseURL to your desired value ( should be the name of your resource folder )
const api: AxiosInstance = axios.create({
  baseURL: "https://urp-pos/",
});

export default api;