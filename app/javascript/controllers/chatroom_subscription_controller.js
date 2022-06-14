import { Controller } from "stimulus"
import consumer from '../channels/consumer'

export default class extends Controller {
    static values = { chatroomId: Number }
    connect() {
        this.channel = consumer.subscriptions.create(
            { channel: "ChatroomChannel", id: this.chatroomIdValue },
            { received: (message) => {
                this.element.insertAdjacentHTML('beforeend', message)
                this.element.scrollTop = this.element.scrollHeight
            } }
        )
    }

    disconnect() {
        // This method gets triggered when the element of the controller disappears from the dom.
      this.channel.unsubscribe()
    }
}
