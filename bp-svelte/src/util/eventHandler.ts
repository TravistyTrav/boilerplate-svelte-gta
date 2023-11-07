import { onMount, onDestroy } from "svelte";
import api from "../api/axios";

interface nuiMessage {
  data: {
    action: string;
    [key: string]: any;
  };
}

export function handlerMessage() {
  function Event(event: nuiMessage) {
    switch (event.data.action) {
      case "toggleShow":
        const appElement = document.getElementById("root");
        if (event.data.status === true && appElement) {
          appElement.style.display = "block"; // Show the element
        } else if (appElement) {
          appElement.style.display = "none";  // Hide the element
        } else {
          console.log('Error: Failed to get element ID');
        }
        break;

        /* Add more events like below:
      case "yourEventName":
        Do Something here...
        break;
        */
    }
  }
  onMount(() => window.addEventListener("message", Event));
  onDestroy(() => window.removeEventListener("message", Event));
}

export async function exitMenu() {
  try {
    await api.post("exitMenu");
  } catch (error: any) {
    await api.post("error", error.message);
  }
}