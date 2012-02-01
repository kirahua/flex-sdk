////////////////////////////////////////////////////////////////////////////////
//
//  ADOBE SYSTEMS INCORPORATED
//  Copyright 2003-2006 Adobe Systems Incorporated
//  All Rights Reserved.
//
//  NOTICE: Adobe permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////

package flex.graphics
{

import flash.events.EventDispatcher;
import flash.display.Graphics;
import flash.geom.Rectangle;

/**
 *  The Ellipse class is a filled graphic element that draws an ellipse.
 */
public class Ellipse extends FilledElement
{
	include "../core/Version.as";

	//--------------------------------------------------------------------------
	//
	//  Constructor
	//
	//--------------------------------------------------------------------------

	/**
	 *  Constructor. 
	 */
	public function Ellipse()
	{
		super();
	}
	
	//--------------------------------------------------------------------------
	//
	//  Properties
	//
	//--------------------------------------------------------------------------
	
	//--------------------------------------------------------------------------
	//
	//  Overridden methods
	//
	//--------------------------------------------------------------------------
	
    override public function get bounds():Rectangle
	{		
		return new Rectangle(0, 0,
		                     isNaN(explicitWidth) ? 0 : explicitWidth,
		                     isNaN(explicitHeight) ? 0 : explicitHeight);
	}
	
	/**
	 *  @inheritDoc
	 */
	override protected function drawElement(g:Graphics):void
	{
		g.drawEllipse(0, 0, width, height);
	}
}

}
