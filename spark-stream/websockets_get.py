import websockets
import asyncio
async def listen_and_print():
    url = "wss://fstream.binance.com/ws/bnbusdt@markPrice"
    
    async with websockets.connect(url) as ws:
        print(f"Connected to {url}")
        try:
            while True:
                message = await ws.recv()
                print(message)
        except websockets.exceptions.ConnectionClosed:
            print("Connection closed")
            
asyncio.get_event_loop().run_until_complete(listen_and_print())