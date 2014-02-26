import luxe.components.Components.Component;


class BounceTest extends Component {

	var dir : Int = 1;
	var speed : Int = 50;
    var bottom : Float = 0;
    var top : Float = 0;

    function init() {
        bottom = Luxe.screen.mid.y + (Luxe.screen.mid.y * 0.2);
        top = Luxe.screen.mid.y;
    }

    public function update(dt:Float) {
        pos.y += speed * dir * dt;
        	//hit the bottom? go back up
        if(pos.y > bottom) {
        	dir = -1;
        }
        	//hit the middle? go down
        if(pos.y < top) {
        	dir = 1;
        }
    }

}