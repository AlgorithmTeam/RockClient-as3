/**
 * User: Ray Yee
 * Date: 2014/5/28
 * All rights reserved.
 */
package
{
    import flash.display.Sprite;
    import flash.events.Event;
    import flash.net.Socket;

    public class Main extends Sprite
    {
        public function Main()
        {
            super();

            var _socket:Socket = new Socket();
            _socket.addEventListener( Event.CONNECT, onConnected );
            _socket.addEventListener( Event.CLOSE, onConnectionClosed );
            _socket.connect( "127.0.0.1", 8080 );
        }

        private function onConnectionClosed( e:Event ):void
        {
            Log( "Socket connection closed." );
        }

        private function onConnected( e:Event ):void
        {
            Log( "Socket connected." );
        }
    }
}
