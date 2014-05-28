/**
 * User: Ray Yee
 * Date: 2014/5/28
 * All rights reserved.
 */
package
{
    function Log( value:String, type:int = 1 )
    {
        switch ( type )
        {
            case 1:
                trace( "[Info]: " + value );
                break;
        }
    }
}
