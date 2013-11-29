package {
	import cn.assin.tree.Tree;
	import cn.assin.tree.TreeEvent;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageDisplayState;
	import flash.display.StageScaleMode;
	
	/**
	 *
	 * @author yanghongbin
	 * email:assinyang@163.com
	 *
	 */
	public class AssinTreeTest extends Sprite {
		public static var myxml:XML = <node label="Root Node"><node label="Work Documents">
					<node label="Project.doc"/><node label="Calendar.doc"/><node label="Showcase.ppt"/>
					<node label="Statistics.xls"/></node><node label="Personal Docs"><node label="Taxes for 2006.pdf"/>
					<node label="Investments.xls"/><node id="123" label="Schedule.doc"/></node>
				<node label="Photos"><node label="Vacation"><node id="123" label="Coliseum.jpg"/>
						<node label="Vatican.jpg"/></node><node id="123" label="Football game">
						<node id="123" label="Block.jpg"/><node id="123" label="High jump.jpg"/>
					</node></node></node>;
		
		public function AssinTreeTest() {
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			this.stage.displayState = StageDisplayState.NORMAL;
			this.stage.align = StageAlign.TOP_LEFT;
			this.init();
		}
		
		private function init():void {
			var tree:Tree = new Tree();
			tree.treeWidth = 180;
			tree.x = 100;
			tree.dataProvider = myxml;
			tree.addEventListener(TreeEvent.CLICK_NODE, onClickTreeNode);
			this.addChild(tree);
		}
		
		private function onClickTreeNode(e:TreeEvent):void {
			trace(e.item.data.label);
		}
	}
}