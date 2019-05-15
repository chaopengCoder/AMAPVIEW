Pod::Spec.new do |s|

  s.name         = "MAMAPKIT"
  s.version      = "1.0.0"
  s.summary      = "Swift_MAMapKit.framework"
  s.description  = <<-DESC
                    AMap2DMap-NO-IDFA
                   DESC

  s.homepage     = "https://github.com/chaopengCoder/AMAPVIEW"
  s.license      = "MIT"
  s.author       = { "chaopengCoder" => "chaopeng_coder@qq.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/chaopengCoder/AMAPVIEW.git", :tag => "#{s.version}" }

  s.vendored_frameworks = 'Source/MAMapKit.framework'

  s.xcconfig            = { "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/MAMAPKIT/**\"" }

  s.frameworks = 'SystemConfiguration','CoreTelephony','CoreLocation'
  s.libraries = 'z','c++'

  s.requires_arc = false

  s.prepare_command     = <<-EOF
  mkdir Source/MAMapKit.framework/Modules
  touch Source/MAMapKit.framework/Modules/module.modulemap
  cat <<-EOF > Source/MAMapKit.framework/Modules/module.modulemap
  framework module MAMapKit {
    header "MAAnnotation.h"
    header "MAAnnotationView.h"
    header "MACircle.h"
    header "MACircleRenderer.h"
    header "MACircleView.h"
    header "MAGeodesicPolyline.h"
    header "MAGeometry.h"
    header "MAGroundOverlay.h"
    header "MAGroundOverlayRenderer.h"
    header "MAGroundOverlayView.h"
    header "MAHeatMapTileOverlay.h"
    header "MAMapKit.h"
    header "MAMapVersion.h"
    header "MAMapView.h"
    header "MAMultiColoredPolylineRenderer.h"
    header "MAMultiPoint.h"
    header "MAMultiPolyline.h"
    header "MAOverlay.h"
    header "MAOverlayPathRenderer.h"
    header "MAOverlayPathView.h"
    header "MAOverlayRenderer.h"
    header "MAOverlayView.h"
    header "MAPinAnnotationView.h"
    header "MAPointAnnotation.h"
    header "MAPolygon.h"
    header "MAPolygonRenderer.h"
    header "MAPolygonView.h"
    header "MAPolyline.h"
    header "MAPolylineRenderer.h"
    header "MAPolylineView.h"
    header "MAShape.h"
    header "MATileOverlay.h"
    header "MATileOverlayRenderer.h"
    header "MATileOverlayView.h"
    header "MAUserLocation.h"
    header "MAUserLocationRepresentation.h"
      export *
      link "z"
      link "c++"
  }
  \EOF
  EOF
end
